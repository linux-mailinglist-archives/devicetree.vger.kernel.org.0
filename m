Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7113857D19E
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 18:34:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229794AbiGUQet (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 12:34:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229485AbiGUQet (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 12:34:49 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3544F89E9F
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 09:34:48 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id o12so2475304ljc.3
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 09:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lbuWDvRgQP4kS+kKYZcZnG6rgbl3Nz3ODL+tqYR0a+w=;
        b=X4ImQQbgcJD4ln76H14MOkiKXMWf0KMiM+ZyMKQKKGVK7F/kOc1uUwrm7gNcnPQynq
         A4eDf63m5PjOaCuw0lGveOz+XhwzW3JgjywlgaQYcjDVhXY88DsjEKzI3nP4tdSphk2R
         aLum8Un1MjfF1F/sL2JrZIMkVaUAOCBBPShHoS9htJ89g2x2Ga0f+I5oskzPwaSr9sRi
         Vrsl2Imji372q3UZuhrVL6lKwnnh1dieSUDbhsDoquBtfgl0nA2Qj/+FvzBBXNjxten5
         EHR+Ew7/4EGnTxShtIT0mrDY62Pwn2eYYJl2NEao5fQ36gXzESGhazPiCg8Oj1P8Yd6A
         N8wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lbuWDvRgQP4kS+kKYZcZnG6rgbl3Nz3ODL+tqYR0a+w=;
        b=M1KdcxC9vwD+YjEviPqIXDGm9mzqWHvw5HgOZJVaWzK5hOOEl+45ljfv7v/hLiu48n
         YzrXmDHceAucuHEoIllVV9He3rkqZhGhZ09GKBtN+OGmJw3xPEXHggn5xf6llcRA+Hh/
         70eL7a0toQ/ZJun2W2Q5/yt2s4f8spOstK96CpmL9ZJL0m+LjyiQbZMJLH3pHJbA5TGo
         PbVT38aqgyNThErepIbbV+QP7o3FhkTNpE5996BKuDB2Svy2gOG+7ceHou7wt0JIGPFe
         TzDZEVeL9Wbj4AscBERQG/YPxkrnKBs/nqF7yOVuHSkg8pGtl2Q+rOiXFLAS+zao48U1
         LTYA==
X-Gm-Message-State: AJIora9Y6wBQKKojq1eGmjU9cYoT7mxwxWwnQKzQobiuOlz7G/ih2z6u
        iRbTv5w6sDV/GyLaobi2TtlGuA==
X-Google-Smtp-Source: AGRyM1ssWyd9nCaaxXHuoqoTVZDwZhxv1f/lGGVSTBUiA8DEf4ZQ7fA6FySYKIH3oU6z4G1PWtC9jg==
X-Received: by 2002:a05:651c:12c4:b0:25d:d71c:e249 with SMTP id 4-20020a05651c12c400b0025dd71ce249mr3397475lje.17.1658421286595;
        Thu, 21 Jul 2022 09:34:46 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id 20-20020ac25f54000000b0047f68e0ca8fsm538022lfz.49.2022.07.21.09.34.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 09:34:46 -0700 (PDT)
Message-ID: <eade56c1-bf4e-0ece-9b67-02f01a95c741@linaro.org>
Date:   Thu, 21 Jul 2022 18:34:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 2/2] arm64: dts: imx8mp-msc-sm2s: Add device trees for
 MSC SM2S-IMX8PLUS SoM and carrier board
Content-Language: en-US
To:     Martyn Welch <martyn.welch@collabora.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     kernel@collabora.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220721101050.2362811-1-martyn.welch@collabora.com>
 <20220721101050.2362811-2-martyn.welch@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220721101050.2362811-2-martyn.welch@collabora.com>
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

On 21/07/2022 12:10, Martyn Welch wrote:
> Add device trees for one of a number of MSC's (parent company, Avnet)
> variants of the SM2S-IMX8PLUS system on module along with the compatible
> SM2S-SK-AL-EP1 carrier board. As the name suggests, this family of SoMs use
> the NXP i.MX8MP SoC and provide the SMARC module interface.
> 
> Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
