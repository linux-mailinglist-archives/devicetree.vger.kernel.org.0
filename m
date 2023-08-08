Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0762D773D64
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 18:17:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232063AbjHHQQd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 12:16:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232181AbjHHQPA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 12:15:00 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E15B10FE
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 08:41:39 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3110ab7110aso5079157f8f.3
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 08:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691509274; x=1692114074;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Go6XT9Xkscl41fZ/aEq4wJ8QEtBrmQLK5ZjjJvK6FoU=;
        b=X3yeKIrhdUxV+RVZ2wZWNpZVKrx5wg54/lpREzsveSY01Qr/CIkyjbZd9v8AFsagUF
         HJADL/dyAmiz9tS+5+MRFSXMCUfWRNkSeMZZNxzIa1jlzZMSEvE936zqw5pfnSg6XZ/L
         cKQ+USL33GmAwfVNAYe5PkvEtrxWOiqF9evOKIrynEkp/v2lWSv2DKFJCJ0nrFoSRHBn
         gcYXh8/FPYgxoWjZEi0PHUpncSq44sQmt2HfsYAoR+75peLEvUP35UVKUxE8gTe/c3YK
         d5qQLZ70qoFhv8nwJdBoJhvMcH8h9Or0J3nOfLNLVmdkg1q/gGPIEXCq7/mUqxFpuIHr
         xdUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691509274; x=1692114074;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Go6XT9Xkscl41fZ/aEq4wJ8QEtBrmQLK5ZjjJvK6FoU=;
        b=D6hxvTeWYwGfaLyab6HiFWR8FtBl0hqOQDuxD2MqvXO5WASw9z92zA0YRYj0XSXhoP
         pIHJuowaiy2253ITk2n1VXYB9kaXEe+cG5PPfF2jAxyTB2sb/JhLdlr4Tn5AzO9okniX
         bs6ULEMHlgXy57V05hw/BHWjmbhX0kWsqqggV5rT+62XcuV0M2LJIQPYDLFaEkQND4kX
         D64piK1iHWhYejDd8sD1WWS71W43UmcW7Lr7mngAiarNBWuT5jNe9x3/icAttE+jA8hZ
         TbxYQ044NxFppLRtN8we911vBldNiQ7TbOnvv1CNzdp1/ny+OzkLWl28jBoX1O9xfRPa
         x/gg==
X-Gm-Message-State: AOJu0YyWKgBipD7APf+qitSqR6sSNiYN8lLEpyD7NdNGT2MY4AuT6o/k
        W5lU3NXl3pdYvOTzFZ8LdRbZp2ZNqJ/kjaevzFA=
X-Google-Smtp-Source: AGHT+IHyamondwf86gYopYCiGXf9C3pe+fwNo5AweauN2G6KAu88O/9463pYl6fAJQL0APVu83+16A==
X-Received: by 2002:a7b:c5cc:0:b0:3fe:785:abf9 with SMTP id n12-20020a7bc5cc000000b003fe0785abf9mr9253537wmk.2.1691489859599;
        Tue, 08 Aug 2023 03:17:39 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id v3-20020a05600c214300b003fe407ca05bsm14651226wml.37.2023.08.08.03.17.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 03:17:39 -0700 (PDT)
Message-ID: <258045bb-b84e-3811-65a3-20ede71118d3@linaro.org>
Date:   Tue, 8 Aug 2023 12:17:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/2] dt-bindings: usb: add device for Genesys Logic hub
 gl3510
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Da Xue <da@libre.computer>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230808100746.391365-1-jbrunet@baylibre.com>
 <20230808100746.391365-2-jbrunet@baylibre.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230808100746.391365-2-jbrunet@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/08/2023 12:07, Jerome Brunet wrote:
> Add gl3510 USB 3 root hub device id
> 
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

