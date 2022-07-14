Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03FD7574905
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 11:30:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237349AbiGNJae (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 05:30:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234808AbiGNJaT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 05:30:19 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 850C72D1C0
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:29:45 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id a9so1804058lfk.11
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=yEOuNrBYev+o1IcwiET9jNJzGDCPmfSFpx+DLuvyDlw=;
        b=ADGZGqHS+KsPPXQ2vye8T68IwBUeTG5I19gcCOX86Xr6TeAKosTtwALFoPE+2m4XQK
         t7cxRmQTf22lsmvDTwxcoLpbkgIzoPomlFKlm+RFeQkKN66C4jvX8UM6b7QvNYzDV5uE
         I/7E/1YvL9dP6BGotOxJ/gyihFzm175LEspNeODYpsQaQ3Ltf3Hxd7C6H6V/MAyOV4cs
         WVOk4mapQluVrdenPXMTWgZHs1zhG5kJNyhKax8WKphHyfZeMu58Urwv7XDmgad5lzIR
         ighJygKdnSY1pI/a5HffGtZ07ndjkgiFBSRfL+XDdVeQOZl8DbeZsnbwqybdSHgGU8J9
         IFzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yEOuNrBYev+o1IcwiET9jNJzGDCPmfSFpx+DLuvyDlw=;
        b=XKMCmhAHYzEYJom0dMMzbapCzXkT4+gtkb9W7KEKX3/9aXNZOb+pfRGJB8YpvkJKea
         pkliOv0IW0ewfZ6Qetz9181xVooqulhiK1fF0Rn096HQN8SpIa4wKOV6I7/9ylLYxstD
         bs48+MhMmAzGp+HYeaL6GM3aZ2qZNJ8qz/8AydQl0uonP0Ax2pfODmXUBnfSWdVZqYFa
         W7e5xQIo7dy6NQRLyiQfRM+ujhIpHYpJc3FMD+wfSAAFDOGI1q12DKAfaoid9mehkHgH
         LkBCmgzVN9jvAIe9LBXTgQD+xr67XQy6q/fhkpXpVocjL+kZtWmEKTRd03XetftEsvky
         Sq/g==
X-Gm-Message-State: AJIora/pDQxmYSGebx9DgJNRFvWXjnmNtaPOZjhtpziKW11oGvSMwO9v
        FNq/Q5C9N18AMjJ/c7R75bcRKQ==
X-Google-Smtp-Source: AGRyM1uIZ8Aq9O28VGC8BeThyVI5AV6EvuwlsA2x0KZizc6umgDcOhBraI/zRvUjGs9IFGZaOwJ4gw==
X-Received: by 2002:a05:6512:2308:b0:48a:f9d:7389 with SMTP id o8-20020a056512230800b0048a0f9d7389mr3791536lfu.235.1657790983374;
        Thu, 14 Jul 2022 02:29:43 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id f13-20020ac251ad000000b00482d0643976sm256243lfk.258.2022.07.14.02.29.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:29:42 -0700 (PDT)
Message-ID: <90a56db5-f41e-681d-2b3e-c16b6ab456a5@linaro.org>
Date:   Thu, 14 Jul 2022 11:29:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 28/30] phy: qcom-qmp-pcie-msm8996: drop pipe clock lane
 suffix
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-29-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-29-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/07/2022 15:47, Johan Hovold wrote:
> The pipe clock is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the clock name.
> 
> Update driver to support the new binding where the pipe clock name has
> been deprecated by instead requesting the clock by index.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 4 +---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
