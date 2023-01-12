Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 661D4666E17
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 10:27:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240162AbjALJ1w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 04:27:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239859AbjALJ0r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 04:26:47 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA668CE3C
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 01:18:09 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id jo4so43223084ejb.7
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 01:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rP6xQL5Ok4Vb8efD0hWEzb0pDSN4ed4GCl3WhsSL5t4=;
        b=B5gzUqNP8EYWfvN+gtw6i5IVBIsl7np6mwHW+qvxeyR+OYkVNV9Nu+idm/ZIDUgjjc
         W3FUhe0m7r0/Mc0OFq5ZTjtenrVpU4YiWDulAWTW5HdzfLhg0BBeziZskbvUoH0NWjbs
         hgWqUrzNmg+s578FnH2Z7Uc4iyZoqf/ttIxpuZ36BJSWviipmCXrzXwMn/HSwcvQ92Z9
         PvffOCLPA8as8VleRwdGUls5o0aGeg1OAnJTNYHMQF057ARZ8RL9QN29opP9hbyIX5AX
         NJ3FnFGNoocX6LXkrR7IO2wwFalwKxU4NSWnevQTFF2GjDrjShZm7LTkoHf3dhOnT2Nz
         iXYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rP6xQL5Ok4Vb8efD0hWEzb0pDSN4ed4GCl3WhsSL5t4=;
        b=L0Xfo1O464M3Fz0uUxyJJa6Vvwekbb/7DRuCHStTZt5hspQJLXM03VZpAjpC+8Pez+
         TwTdsaa+hHiu/WsC2mlGgRFIilO8ZpVfMpGS9uPIw2Oj9RZPeWkHirrb3NZ8kFNvWTMT
         +gzmegiu6eeEXFQCsqYJaZDnAdtmXChoP/bvkUC5ANfpvDR2bshg+/lArkSrcsfnMSxq
         tSOoU5TYkmtpsYZbgAYHB4pLo+MHWt16DgZm9kbMJU3ckXpAPUzVx/5Ttykl/DGOpsFE
         UJMMca7HEMMTEGXq7xQD/TytzjehKihApqNMuhkZAVsCoZqkoDb/17+mUMDGkE/ttMQn
         xisQ==
X-Gm-Message-State: AFqh2kquNbvTXLHa7zUg/FSHQ9SzRadKdmo6n7/lVNLEZ588zqr2k2VR
        PgqgTXmH0kv8QgPycIrWpKil6Q==
X-Google-Smtp-Source: AMrXdXvF7ePYWQNSXYe2u6RVthslb60oaBh2rtOSXzXQn1LqcZwARSuX4vWfAqDcGtIMWlcp+ivLwQ==
X-Received: by 2002:a17:907:3f9f:b0:840:4901:901f with SMTP id hr31-20020a1709073f9f00b008404901901fmr86173972ejc.3.1673515088389;
        Thu, 12 Jan 2023 01:18:08 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id s10-20020a17090699ca00b0084d43100f19sm5191939ejn.89.2023.01.12.01.18.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jan 2023 01:18:07 -0800 (PST)
Message-ID: <c548f9c8-81ac-5d34-c169-420c45c987e2@linaro.org>
Date:   Thu, 12 Jan 2023 10:18:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH V3 02/10] dt-bindings: remoteproc: qcom,msm8996-mss-pil:
 Update memory region
Content-Language: en-US
To:     Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, manivannan.sadhasivam@linaro.org
Cc:     agross@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, konrad.dybcio@somainline.org,
        amit.pundir@linaro.org, regressions@leemhuis.info,
        sumit.semwal@linaro.org, will@kernel.org, catalin.marinas@arm.com,
        robin.murphy@arm.com
References: <20230111114337.24782-1-quic_sibis@quicinc.com>
 <20230111114337.24782-3-quic_sibis@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230111114337.24782-3-quic_sibis@quicinc.com>
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

On 11/01/2023 12:43, Sibi Sankar wrote:
> The dynamic memory region used for metadata authentication would still
> be a part of the kernel mapping and any access to this region by the
> application processor after assigning it to the remote Q6 will result
> in a XPU violation. This is fixed by using a no-map carveout instead.
> Update the bindings to reflect the addition of the new modem metadata
> carveout on MSM8996 (and similar) SoCs.
> 
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

