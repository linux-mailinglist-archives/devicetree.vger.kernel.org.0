Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12DB366916B
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 09:45:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238192AbjAMIpL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 03:45:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240652AbjAMIpH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 03:45:07 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8535C3AB3B
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 00:45:05 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id 18so30217038edw.7
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 00:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rpXbd029I4RPrcJB43EPCQvzvd9TlAPezPhrvHuKOuc=;
        b=o3jbXDIKuTrfK/FM8hCEiHzqTQqqdJisJkST2+WPejTG1q7HPRpBjiaAgPihfoufw7
         xHx7p20QP7Ariimi43Qph8cY7QmKBKEm9+138VJwbw//XL2IGvH0FKvh+yyvQyqD9IDm
         lrY++lqPr9VJPqTqZt+1hLklqsBTQDoJNHzHU1p5bCFWcOYdPbNDiM1qwbIiN+Qap2l4
         zA/tGM9fvHMKMzYm3kyAqZjm6EZvMIOvWc9REcL2d8L0B6NCg0fFFBtEw5rYjD/I4duk
         W0bYs3EAu+s2oUCZ9mjxMW9CzMFGDmFaIqgBcdHj1I3vDqhC9BTbS4++X7RKSJGV1CWb
         W6XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rpXbd029I4RPrcJB43EPCQvzvd9TlAPezPhrvHuKOuc=;
        b=VnMKwtxeOHmuWElUuoN8IR0eUEJsIitIQCjvf/KcJTg5gGvH/r75KVrjNVLx3SAG16
         MMuqrPOHtq54l+5uc969dn+DDMbxR4uKgLDWOrrXQTro0uxpDUxYWtyPDF0sUxrOg6n/
         9gY0yZTf5LaZkaG0REcapIPwzhWtcA003tDRtNyguR62t+PYRoWNrgMauaexsDiHj6yT
         jDAO2RIJ3cECb1AQHy1WLfW7119S5gUZUdaovXZHVV0Bbn1aPJHIOXBvKxHyMmx3Tx0V
         ul+xpSq54AAA8PMRoAWwC8ivxnlXiKhzfU4rjX4SvMTOt0dSIx48mCmM25VzMvasZcPr
         LhkQ==
X-Gm-Message-State: AFqh2krEhUJSKNsUrezOFHxqJ/sGSsSM6PwjSBwxZLL5kjQ+qS2dipam
        0FQIrTaAYPJHiTm93YKhGR0+RQ==
X-Google-Smtp-Source: AMrXdXv/8nXe2cQTPknFxBnq/uaW5tOzgI0h2dOUmh7Bg86HuOIFQ9db4MoU0xWsBZgtyuL10JOf0A==
X-Received: by 2002:a05:6402:370:b0:492:bf3d:1a15 with SMTP id s16-20020a056402037000b00492bf3d1a15mr25701705edw.1.1673599504036;
        Fri, 13 Jan 2023 00:45:04 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id b2-20020a0564021f0200b0048c85c5ad30sm7913356edb.83.2023.01.13.00.45.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jan 2023 00:45:03 -0800 (PST)
Message-ID: <230e4a92-1114-1217-9d3e-b2aee9b30d41@linaro.org>
Date:   Fri, 13 Jan 2023 09:45:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2] dt-bindings: arm-smmu: document the smmu on Qualcomm
 SA8775P
Content-Language: en-US
To:     Bartosz Golaszewski <brgl@bgdev.pl>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230112154554.442808-1-brgl@bgdev.pl>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230112154554.442808-1-brgl@bgdev.pl>
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

On 12/01/2023 16:45, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Document the qcom,smmu-500 SMMU on SA8775P platforms.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

