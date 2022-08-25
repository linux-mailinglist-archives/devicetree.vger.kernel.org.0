Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58BD15A08AF
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 08:14:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234597AbiHYGNu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 02:13:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229577AbiHYGNu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 02:13:50 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0396A9F756
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 23:13:49 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id n15so5807663lfe.3
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 23:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=wlxyyEdyz9YeaP+PKKdOU9ZrYBY0DMAseQm1V42ntwY=;
        b=UPsydeRD7QmyNX/kxeY7lnbMw8ie0nb0OcFrbQmJnaxJ6xd8fOfUaQYv1HClHxFWY9
         6Rnsl+fo0GzF/eGP/wAUkgjfz+5e6Bx6m/c6XN2xIHnuTh2E4N+99ZRmtffu7EpXPqKE
         WZGM2MQLyqUebHOwjMVTRo+BE4arXXFGOiuMkk9LQ3cj8tyKygNyMACti9WBehBXcR3G
         nyoCzs12K4eFrNEz0BLTAQJ3vkgKE5f/52AVZ6Cy+ttumgSp+GTUMbaa46OZbmn5KPF+
         l/8cCWewOQG7ojKLIJoDQPjT1CP44wbuyX12WzJm39iXkLkuYfIwiP7HFNix/58PLeNS
         8a9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=wlxyyEdyz9YeaP+PKKdOU9ZrYBY0DMAseQm1V42ntwY=;
        b=0YqUSa6jQzUFX9o3TEV8xomTKYmW7eYznq9Lr1H1JmEW7CfXZWGqDYAO6FAx0ieVCi
         QuVDE67NlN/nHFmeioN2hPAt+g7BRy7hvq60N/tmPEa1HAsROtWoIBUBti6Qz0TIrEUl
         Z1veW0g4t7JHy+shUe8tCNl1V1noROkQGAH7mthMvmxyw1GmgxRPVhxHpFXEUKAQN8Lq
         BQON5E+IuTj2wbEpqti5zWAJLcNCJ8907Y9HawmNPjdLf8eAOjA1+sW0CSjZkOpC+abE
         lsx1MSOuQMSrpkNVuLY5slWGL896oA6Z+ovUTldVkZx3+/Ear6vSegkiRhDIODJDOv29
         Yybg==
X-Gm-Message-State: ACgBeo2eUnzNdmk56FFe/BZ9XdV1Liq3SpdVOJfTEcYtEfA6INgb5cQc
        m0/5aWj1nhswewsF2NeVVzCptw==
X-Google-Smtp-Source: AA6agR7UqmyD7JRBfuRRmBmdO0IXT/oW/WrgCHd1/0DNqYVZ+wtbYs/xMKgsSXJIPZ4+fxXOwAvASw==
X-Received: by 2002:a05:6512:3a90:b0:48a:fcf6:3137 with SMTP id q16-20020a0565123a9000b0048afcf63137mr605815lfu.255.1661408027387;
        Wed, 24 Aug 2022 23:13:47 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id f17-20020ac25091000000b0048a8586293asm323218lfm.48.2022.08.24.23.13.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 23:13:46 -0700 (PDT)
Message-ID: <b906210e-6857-82bf-755b-760e33d3a338@linaro.org>
Date:   Thu, 25 Aug 2022 09:13:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 1/4] dt-bindings: sound: Add Apple MCA I2S transceiver
Content-Language: en-US
To:     =?UTF-8?Q?Martin_Povi=c5=a1er?= <povik+lin@cutebit.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Hector Martin <marcan@marcan.st>,
        Sven Peter <sven@svenpeter.dev>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Alyssa Rosenzweig <alyssa@rosenzweig.io>, asahi@lists.linux.dev,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220824160715.95779-1-povik+lin@cutebit.org>
 <20220824160715.95779-2-povik+lin@cutebit.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220824160715.95779-2-povik+lin@cutebit.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2022 19:07, Martin Povišer wrote:
> Add binding schema for MCA I2S transceiver found on Apple M1 and other
> chips.
> 
> Signed-off-by: Martin Povišer <povik+lin@cutebit.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
