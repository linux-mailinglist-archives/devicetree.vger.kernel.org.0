Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2ADD655B3E0
	for <lists+devicetree@lfdr.de>; Sun, 26 Jun 2022 21:58:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231851AbiFZTz7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Jun 2022 15:55:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230484AbiFZTzs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Jun 2022 15:55:48 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18983558B
        for <devicetree@vger.kernel.org>; Sun, 26 Jun 2022 12:55:47 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id ge10so14925673ejb.7
        for <devicetree@vger.kernel.org>; Sun, 26 Jun 2022 12:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=AuJrrJqEZIpaT7sDq4oe+HIdIK2RPnds4Jst8C6taz8=;
        b=ib0s0QfwtbcSXes7aB+A+XkDncWDH+Ye1RpwO8hJE3QJD20/q/k+WOBWCN4Di+ZeJK
         HSdJpXGLHbfUBAxRxhnAjFzbGzvVEr3fyW+Qj+v7fqSv/CTf1tBsDO3bsocNJhxQEh1u
         o4PBfqN1en+SW8CNrcz9H5n/Zs27Lady/RdNSCwRdVpw55fV4S4OlSh6eAlEPBSYqTBO
         8oebqcOzOzPWXttpsixQYG673+RAhytc8g1VGBzVil8NdbUe7dfFiDlhKVSCgntGwRWZ
         kgYtgzh+HczWxmdiOVjBHElsfHSxKpCfiUlN/Bi3HjSX1E6ZOmHac0M0iHPIaUNzGihU
         fM/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AuJrrJqEZIpaT7sDq4oe+HIdIK2RPnds4Jst8C6taz8=;
        b=3FZoQxlpP9/p6FkksmEQg/8lDO9GarPKHbwnRMtm5wJL0fmvx2VnK9URDOeMTxDhnM
         0Yez2x17qM4Lml+ib9PJYuudlTKScWGq1Np3Z3ui99FxMajiR/ORwa4MAJMXwtsJtaop
         nVyUTIzu5KvI3s9Waz7TDk/V2apifjdclvjqslu2noIxIIHMOmbVu7BRUgBrDcw0HPzw
         bp200ebhJ7DJAJgrgGGJxYLYEbBOa/pgwzAQN6oYFksh04qufdszMqLb5439kYGLNN07
         ko+ANo9k5amCcNEXkfHaqCGJpE+SFJEh17OMqg9DycYrVdRoiQ075WVejc6UKsOMb5XZ
         UtcA==
X-Gm-Message-State: AJIora8FJ8xdCvXk7inboswxqkgPMPQdmdVHA/TEnPlKnO9BAsgF4KHM
        I0r2fp2d5VBMK3QNUG7lWuvwonYF2XOKmw==
X-Google-Smtp-Source: AGRyM1ukZ+ZOpVrIGCktCeBPNgxUPOy4HPAQP+M+09LoQllzMk0p8xb5kT53u9O2rEy/oFG6vgrsVA==
X-Received: by 2002:a17:907:1c0b:b0:711:cc52:2920 with SMTP id nc11-20020a1709071c0b00b00711cc522920mr9355175ejc.301.1656273345722;
        Sun, 26 Jun 2022 12:55:45 -0700 (PDT)
Received: from [192.168.0.245] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id j15-20020aa7ca4f000000b0043559d9e8b9sm6316641edt.53.2022.06.26.12.55.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Jun 2022 12:55:45 -0700 (PDT)
Message-ID: <aae09aaa-ace5-265d-5d6d-8f2950be16bf@linaro.org>
Date:   Sun, 26 Jun 2022 21:55:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] ARM: dts: add missing compatible for pm8916
Content-Language: en-US
To:     David Heidelberg <david@ixit.cz>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     ~okias/devicetree@lists.sr.ht, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220626191540.176574-1-david@ixit.cz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220626191540.176574-1-david@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/06/2022 21:15, David Heidelberg wrote:
> Format should be: device specific, generic compatible.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/pm8916.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

This was already fixed:

https://lore.kernel.org/all/20220507194913.261121-7-krzysztof.kozlowski@linaro.org/

Best regards,
Krzysztof
