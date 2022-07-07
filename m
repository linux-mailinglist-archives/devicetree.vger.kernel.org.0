Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 021BC569AAB
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 08:46:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230274AbiGGGqf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 02:46:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230334AbiGGGqf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 02:46:35 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3B702B244
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 23:46:33 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id c15so21111738ljr.0
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 23:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=tZh+dn4czsVPREHl44O7IddFEHHwiTNYYgVX5E+3arg=;
        b=AfFd7vdcM7BrjURHfGmIIl3YmliD3VHhxWZ7Vw16prCL9B9sYswdVolgCUZWTF6isG
         +oH2PjLfB0Rr1/Yw9LAQR9Re4F060fLQatLnFByB6UX3i8CF+e7ZDTxVHkBbLfu5GAJJ
         oG/Vw9mhKeAHn93/xC1N+oTrVNBjJzmZrYkxBk6+TnNMjmhWzNJNUkWnzLmd1RDsoMGd
         pLFqonUey7BkmhkfSRXU/P6WinA9ngq8l0SXgdBazjDKmC38aeARDWcP1Qhg2NVOj6O5
         NoKNOQ+GH1U7XAlhjT8OHYHhYce/U3iAwlwgsRlc7+6pNysE8KyvjoYmZZtBDowV83+2
         YqUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tZh+dn4czsVPREHl44O7IddFEHHwiTNYYgVX5E+3arg=;
        b=nG5fbdZ7I/SZ05vKJMzZCsVHRgx6jgZVlUYb3ybdxZJu6nZKsBDZddLrQ8ZHHvMwHz
         BOD00NLF+pJh0eUFAzJ8oCS/JpJR/CPPZzVrWOqNDyK6oQ69dff9Z4I0gvAMSTR6ADYo
         Ig/bDSRxgO/v1ZHfnlI2MCtXT1l9HFR0Jl5slfe5pRJh5NYrQ2+hQ63Ld74gjQ4vDyjR
         svfmrplgIq+AhdPgcE78fCivsPZF8aoaEbcKdXJe5XpkDrJcUVhpn1oV4b7JhyM2ckCP
         xXgXBqrBlGOY4cTPKds7R6HXv0CjugeUSWoXi/18Ly3UR1WEzna0I3ebocWS8r2F76m2
         +0wQ==
X-Gm-Message-State: AJIora/3iOD44xXEHTHPhAZ7nzGaqaOPcwRimOfV/x7lENauckrm5FDe
        vsGzDMvpf42vW436n80PaPxrRQ==
X-Google-Smtp-Source: AGRyM1sxS3jj5vIVCBB7Th7q596D72VdSdvG01Z1E2modQbGL/e4QVMyP3GktInsrEdzy3hucwVkCQ==
X-Received: by 2002:a2e:6e0b:0:b0:25b:bf22:47a with SMTP id j11-20020a2e6e0b000000b0025bbf22047amr25834609ljc.524.1657176392137;
        Wed, 06 Jul 2022 23:46:32 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id o3-20020ac25e23000000b004889096bc6csm156151lfg.134.2022.07.06.23.46.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 23:46:31 -0700 (PDT)
Message-ID: <41e17a56-5cb0-8e90-c7ae-a7a56de986d0@linaro.org>
Date:   Thu, 7 Jul 2022 08:46:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] dt-bindings: mmc: Add compatible for MediaTek MT8188
Content-Language: en-US
To:     Johnson Wang <johnson.wang@mediatek.com>, ulf.hansson@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220707054710.1396-1-johnson.wang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707054710.1396-1-johnson.wang@mediatek.com>
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

On 07/07/2022 07:47, Johnson Wang wrote:
> This commit adds dt-binding documentation of mmc for MediaTek MT8188 SoC
> platform.
> 
> Signed-off-by: Johnson Wang <johnson.wang@mediatek.com>
> ---
>  Documentation/devicetree/bindings/mmc/mtk-sd.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> index 2a2e9fa8c188..3fbf33ad4f7c 100644
> --- a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> @@ -32,6 +32,9 @@ properties:
>        - items:
>            - const: mediatek,mt8186-mmc
>            - const: mediatek,mt8183-mmc
> +      - items:
> +          - const: mediatek,mt8188-mmc

You duplicate quite a lot. Use enum.

Best regards,
Krzysztof
