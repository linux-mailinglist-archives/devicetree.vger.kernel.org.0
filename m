Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9FDE5E5C9A
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 09:40:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231132AbiIVHkT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 03:40:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229570AbiIVHkR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 03:40:17 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC2EB58B7D
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:40:12 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id s6so13260121lfo.7
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=eESOgHovTRTov4VM1ZhFfRZLjpk+62WdXTila9dWYRc=;
        b=dwZWbMkY3xLnirQQ0eAHDce4lKFBsdbDUS8ks4HcbPK39XYEstpL9p87qnyYViVGKm
         EYbG0bYNwaqEhKzrY+u1VLPSho0rwi2bFCZg3Fwh8oVzFKM40UeZ3ixZoItJfLpvbV8+
         J8JA6+RClBgYL0AAYamHdmtMz/Gp0uS7ntClRK7QcfzZFm/s7nGmMJjJKMgzS408qsY/
         3dgvlyuewCdn+YaPg8ROXxdt0LVAaLh01A1BRHPFPikAoYpT5fBn6W5IFUIuAY947a0K
         nwgvAvMskb4Iv4M7VAuU1m4M2iFs7arjJ1axiPqiAEdVxbSMwngiq84DH3+fkDS7I05/
         Xqdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=eESOgHovTRTov4VM1ZhFfRZLjpk+62WdXTila9dWYRc=;
        b=xd1N7UccAkYVnxwv4AYAEHk/z5p4nWBpjtE3nkqTks5qQAhVszKq32FegnUY1OVB8l
         VWKKz0c0nvF8iaGLHEy5xPM4I8znarlQQI81ThECp7pY6+N2R3yqCPdzh0pgpRYtR98X
         hJEN1c197DgcNAqyX1oYGJoZx1rerTCa8I+IXNUMYJ7uK6Gxer88D2JG1mORytyNxJV/
         EGlW9rlK+ponNn/O7RGCMSTnq2EAoebTsBRS3+XfxovpX/KyobLAG3Mj3bOKIcDA8XAe
         4061ilOio4Tv5uh9HRbFGU9ZGcHdMwSD0KgcBqSntk9uinOp16O599yMUGJyryEesXko
         noNA==
X-Gm-Message-State: ACrzQf2bXx3SxcIWOSCTc0Xv5AaE4osFTVVr5I/KSrA13uSHkvSib+Bq
        2EdOE7eyGJ1qKC7EHWGkoZBI0g==
X-Google-Smtp-Source: AMsMyM5Qo0n2NrO9wU4LO8xjTlNr1EQ0sx6tz7EoleVH4eUML4m+HLw2SBqUzeDYm9V6rw/GQHLOXA==
X-Received: by 2002:a05:6512:3c89:b0:499:2069:17b4 with SMTP id h9-20020a0565123c8900b00499206917b4mr799880lfv.235.1663832410175;
        Thu, 22 Sep 2022 00:40:10 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d1-20020a056512368100b00494643db68bsm807960lfs.78.2022.09.22.00.40.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 00:40:09 -0700 (PDT)
Message-ID: <18f7f773-e61a-462b-9056-3ef26353578d@linaro.org>
Date:   Thu, 22 Sep 2022 09:40:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 1/2] dt-bindings: phy: renesas: Document Renesas Ethernet
 SERDES
Content-Language: en-US
To:     Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <20220922051645.3442321-1-yoshihiro.shimoda.uh@renesas.com>
 <20220922051645.3442321-2-yoshihiro.shimoda.uh@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220922051645.3442321-2-yoshihiro.shimoda.uh@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/09/2022 07:16, Yoshihiro Shimoda wrote:
> Document Renesas Etherent SERDES for R-Car S4-8 (r8a779f0).
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>  .../bindings/phy/renesas,ether-serdes.yaml    | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/renesas,ether-serdes.yaml
> 

Thank you for your patch. There is something to discuss/improve.

> diff --git a/Documentation/devicetree/bindings/phy/renesas,ether-serdes.yaml b/Documentation/devicetree/bindings/phy/renesas,ether-serdes.yaml
> new file mode 100644
> index 000000000000..04d650244a6a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/renesas,ether-serdes.yaml

All the comments from v2 are still applicable. Please fix or respond.

Best regards,
Krzysztof

