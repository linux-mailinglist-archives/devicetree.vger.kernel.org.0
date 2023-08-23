Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14870785939
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 15:27:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235829AbjHWN15 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 09:27:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236103AbjHWN1p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 09:27:45 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26B14173E
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 06:27:18 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2bcc4347d2dso41921281fa.0
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 06:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692797234; x=1693402034;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3VJEkZrJi5COn4keidfPLKaEGFF5PW7AzdVSvDuyuJI=;
        b=ZJq6O8NwVH9wEHjdNic66KhMyku21pwRqFIIVgrNZILStZl0eS4UdH+TLV0LTiByQB
         Wv6jymiZABqRy/EveXxIl34BzKKe2fKVUdDKqIle8QJ1ASuNtyvcAChy3OtY9y+MghSv
         MDjG9vlhmpWUV+jCORResHDPVegdeHzFxcj+cVouqKFIdJ5QsQElyPmg0/EVldUaumRm
         nFndfFUjG3tb1pRovm4iuSF3Sll8HuIjOvD91nK9WEyVh49+gI6+ZfWIuR/DmEesBxMV
         HGS8GIrvWkbCazhK3V9fTHGp/IWXsggNk+Cgt2APq02/kDHRbe03dhSz4BNQAdWgYJBA
         W+3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692797234; x=1693402034;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3VJEkZrJi5COn4keidfPLKaEGFF5PW7AzdVSvDuyuJI=;
        b=jjY+lugDG8RYKJJQ2Ikxh7v5OT5L4PLxstTeF4Bo8P4XE9bXUE58FM0rxlCi4gPvMH
         RQDIqL6qBg09NCfuS4GFM8XUp8DXDduzfqZWSaifUcrZhYVX0f1xjEfiMURzk45ZkzS0
         Po1Eu50j0zUTVNM9nSakQPv1J/DnAqn1iOaThGs0xCIxhWQm37ar447MWf4d2UQlVW7j
         KWuDaISKdZppt8S2AWXBs1Qvx7YAEy4UhxGlFmSTU4eXa6CUSe/6gYMJqwwBC+puDqEN
         Fbl6Rlh+vp3v5+RVLgWhpGrAQojpL5Sl6bf0nisEa+58QtstpoZ6dkZxLLI4PZmwmzUN
         XRkg==
X-Gm-Message-State: AOJu0YwMm380TbuH7c0cIBDT2caLreMBRfZjqusj/4ZxCUFX5Y56zMp4
        BmWg1YNIkbSZKB3oQksLtts2MQ==
X-Google-Smtp-Source: AGHT+IEyOSfb5mYMIn2e/As1tn/ZMWk9CBmGlem/rppvRjqD0BZ3/751rmNUo0rWrD5ggdc2F1o/AQ==
X-Received: by 2002:a2e:6e07:0:b0:2bb:b626:5044 with SMTP id j7-20020a2e6e07000000b002bbb6265044mr8877530ljc.6.1692797233698;
        Wed, 23 Aug 2023 06:27:13 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id d11-20020a17090694cb00b009934b1eb577sm9718403ejy.77.2023.08.23.06.27.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Aug 2023 06:27:13 -0700 (PDT)
Message-ID: <a3b1f9ce-bedf-bc1f-d641-8cb7ca3a5de0@linaro.org>
Date:   Wed, 23 Aug 2023 15:27:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3] dt-bindings: phy: st: convert phy-stih407-usb to DT
 schema
To:     Raphael Gallais-Pou <rgallaispou@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Patrice Chotard <patrice.chotard@foss.st.com>
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230823132224.111326-1-rgallaispou@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230823132224.111326-1-rgallaispou@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2023 15:22, Raphael Gallais-Pou wrote:
> Convert the st,stih407-usb2-phy binding to DT schema format.
> 
> Signed-off-by: Raphael Gallais-Pou <rgallaispou@gmail.com>
> ---
> Changes in v2:


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


---

This is an automated instruction, just in case, because many review tags
are being ignored. If you know the process, you can skip it (please do
not feel offended by me posting it here - no bad intentions intended).
If you do not know the process, here is a short explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tag is "received", when
provided in a message replied to you on the mailing list. Tools like b4
can help here. However, there's no need to repost patches *only* to add
the tags. The upstream maintainer will do that for tags received on the
version they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577

Best regards,
Krzysztof

