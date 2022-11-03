Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 041FD6183D8
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 17:09:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231751AbiKCQJw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 12:09:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231764AbiKCQJe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 12:09:34 -0400
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com [IPv6:2607:f8b0:4864:20::f2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B97881D0CB
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 09:09:08 -0700 (PDT)
Received: by mail-qv1-xf2d.google.com with SMTP id w10so1444307qvr.3
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 09:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rdupXZP9IFvwGILZVl/bXkxyiQBrd2eY1VoR9aqF3f8=;
        b=kU9c5IXpOAFVRhtLb9VD0DkbGRRrvofFv5ZaV90ha/Z5Pjkds75ssplzse/sexzY2G
         t4ryGbivPIq5eSqm2hV/0dAwUzPEMCCIJ7IJRnzOREaD1PNNjDgXONaIUuG5SH/QjqQR
         3dv/jK1oPs2gFsxHCbY/35BjVKfQcu1hH2SrX4u02/Pgev80Go7zikIubUdilCydjnb4
         uS+ZTwvF+YU7OOrP+9J53OwRZvWgphfr/OKoqL8LwDCAjuNGqCtpBaTKOeVQdumMuMzl
         DuT9fb/j515nbCluQBt4Ica6G2qsI6tmDSlLeDAcXAD2dMbVsBU2/uToc6o34YF6j2Zl
         38WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rdupXZP9IFvwGILZVl/bXkxyiQBrd2eY1VoR9aqF3f8=;
        b=F1gfuRwO/ZAc46/fcy/8nMIEspQhJhBEaheU5pE/ltDg+41oaSKPLmKSCXRAAnghM5
         uLAavuardH5Kzc8jTw8WY3inC05P+sOAzLdlE4jEIVUMYwj66DVazJQBmI3w7Pj4vOBs
         m4R+pnIHkwZ2QcKyVfyld0BZprDootvHJelrveejYhyoCsvbPpXzPGKXBPBcdYXkbgX9
         OkusDtu8CL7w1kOng/BTQWutNOCQph1iAagMtPhkGujJ7AxydAe5wGK4OPalQejk7lx/
         PXxp0vr4w1bv+qewL+06E2fvmGfkaTmUVbypbJZYKjEy1QMkO7dPVC0e5/l50uL+N8SD
         2Jxg==
X-Gm-Message-State: ACrzQf0mq4HMv8D8v69TrT0t73Y3JIhI+CSTlcYJ0O7TE6u7sPIJa+uT
        K8O1W33FADsrwupDA9IQ/xvv6g==
X-Google-Smtp-Source: AMsMyM4Na22MQCEkYmNGL/H4cHE5jOAZx/Jxn3T2uL4LmjrXMvv/w3qjaGdleg7s97ZnEYStiL1OmA==
X-Received: by 2002:a05:6214:194c:b0:4bb:6d2f:3e7c with SMTP id q12-20020a056214194c00b004bb6d2f3e7cmr27602892qvk.4.1667491747673;
        Thu, 03 Nov 2022 09:09:07 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:a35d:9f85:e3f7:d9fb? ([2601:586:5000:570:a35d:9f85:e3f7:d9fb])
        by smtp.gmail.com with ESMTPSA id h18-20020a05620a401200b006ee8874f5fasm1018291qko.53.2022.11.03.09.09.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 09:09:07 -0700 (PDT)
Message-ID: <287a41ec-b004-54a7-1ac3-07cc4db5fbbf@linaro.org>
Date:   Thu, 3 Nov 2022 12:09:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v4 1/3] dt-bindings: qcom-iommu: Add Qualcomm MSM8953
 compatible
Content-Language: en-US
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Rob Herring <robh@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        iommu@lists.linux.dev, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221016161554.673006-1-luca@z3ntu.xyz>
 <20221016161554.673006-2-luca@z3ntu.xyz> <5615419.DvuYhMxLoT@g550jk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5615419.DvuYhMxLoT@g550jk>
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

On 31/10/2022 12:26, Luca Weiss wrote:
> Hi all,
> 
> On Sonntag, 16. Oktober 2022 18:15:51 CET Luca Weiss wrote:
>> Document the compatible used for IOMMU on the msm8953 SoC.
>>
>> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
>> Acked-by: Rob Herring <robh@kernel.org>
> 
> Could someone please pick up this patch?
> 
> Looking at the file history, there's not much but maybe @Rob could you take 
> this? Or maybe Bjorn?
> 

Use "iommu:" in the subject (dt-bindings: iommu: qcom:) so IOMMU
maintainers notice it...

Best regards,
Krzysztof

