Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBE66587AD0
	for <lists+devicetree@lfdr.de>; Tue,  2 Aug 2022 12:38:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232724AbiHBKiN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Aug 2022 06:38:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231208AbiHBKiM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Aug 2022 06:38:12 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5374C19281
        for <devicetree@vger.kernel.org>; Tue,  2 Aug 2022 03:38:11 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id bx38so5294253ljb.10
        for <devicetree@vger.kernel.org>; Tue, 02 Aug 2022 03:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=GrIjh3GlcFwuItne32waJbd9J1zlfDiAzXhQEGRXDrY=;
        b=t6X0fGr0WgyiUFeT+Ch/Oii7o+V/fVb1rxgum5SUjglZfPXkTRf7W4wOnWhPNoxmfz
         2VIcBDaUA42e1aoi6KTNlFmNCOThZzPMswmbTeI745T3lHJ/GNKFjY4OPOS8YwdNpu77
         mAKSLsNHoPA8kZTyJhIfJ7Z5a1CdrkCozJIAY7+30Ji0VM1wOar4uDEJEdlqh0bYRmXI
         Y4oxn9ojfBLusOIeOrskFFiWqJWOMqMrXAhwLGyoZFpPrvSRp3oMiiotCRn8uKFyL+LW
         i8rnh5Vn3Mxiy7kCt2miEq23Llsscoe7XPW9Uod2Df0mckMAoB0yiUMvfECv3W2D03uu
         VZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GrIjh3GlcFwuItne32waJbd9J1zlfDiAzXhQEGRXDrY=;
        b=tctBlsXv1okJOmzl8E2m6KTOCf5XagRtXIri8UIbCjaZHmIw2a30kAhmNuvPjGXnQZ
         bwKCgmoPMGJ14aK2M3fpROTcbwGv/9/BAS/kvdVCJHQh5I4TgrvE5ATmlC3m31zgTnNA
         UrpVxOHY7ODKorMvtq64+LUd5LGDjn84TUEA5J3+OulmCHeWxlNr1uUgh+8eKXosin+f
         DAfoc7T7azpG9whVYUeYFc6gYC2EjVGVevBmiGPi5AqLRv8S4JmX4+MMTRVzrDRlrqAL
         m0/zZOxCrnWk0kplDAIXAHoeRiUUW0/OTKqccb+yqW8D6Df7EcAX60SWsP0U0GWq5xiv
         ObhA==
X-Gm-Message-State: ACgBeo3diYdgk+YKB80BIWj/qcjnd0QVW9bGmtb8WO/sjpjR/gfn3aWH
        samIYLXMZ6KIZ1vcBJ47Glgd9w==
X-Google-Smtp-Source: AA6agR5wPg0NxYYzaGcWWg1zRYH0xtKJ9HqiX12XQ9f4cedMfO/EbzgnbNeWejPdykRbIRwGE2jXZA==
X-Received: by 2002:a2e:9813:0:b0:25e:4aa1:e51d with SMTP id a19-20020a2e9813000000b0025e4aa1e51dmr3887614ljj.298.1659436689258;
        Tue, 02 Aug 2022 03:38:09 -0700 (PDT)
Received: from [192.168.1.6] ([213.161.169.44])
        by smtp.gmail.com with ESMTPSA id a3-20020a19e303000000b0048a68fe3745sm2056986lfh.34.2022.08.02.03.38.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 03:38:08 -0700 (PDT)
Message-ID: <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org>
Date:   Tue, 2 Aug 2022 12:38:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for
 RV1126
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Elaine Zhang <zhangqing@rock-chips.com>
References: <20220731174726.72631-1-jagan@edgeble.ai>
 <20220731174726.72631-3-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220731174726.72631-3-jagan@edgeble.ai>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/07/2022 19:47, Jagan Teki wrote:
> Add power-domain header for RV1126 SoC from description in TRM.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v2:
> - add blank line
> 
>  include/dt-bindings/power/rv1126-power.h | 35 ++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
>  create mode 100644 include/dt-bindings/power/rv1126-power.h
> 
> diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h

Vendor in filename is needed.

> new file mode 100644
> index 000000000000..38a68e000d38
> --- /dev/null
> +++ b/include/dt-bindings/power/rv1126-power.h
> @@ -0,0 +1,35 @@
> +/* SPDX-License-Identifier: GPL-2.0 */

Dual license, please, unless some copyrights are no allowing this.



Best regards,
Krzysztof
