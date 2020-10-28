Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9FEA529DAA1
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 00:26:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387488AbgJ1X0U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 19:26:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390060AbgJ1X0Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Oct 2020 19:26:16 -0400
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BE69C0613CF
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 16:26:15 -0700 (PDT)
Received: by mail-lf1-x141.google.com with SMTP id f9so988308lfq.2
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 16:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xbOwsNa5EgRVEPC6RsF2q+pJppK0zBbrf2UvDq3Bu3k=;
        b=NLLliVa2a6XNUl5f/NOZPSxQfz4jsOb4UqYugDxUyxw8R1ax20WqSDU5sJdq6tYAiW
         ebPo22WdT1c6hhj5bYo7igBg+asiI3bZvt6DkbqfglijnChQ+J5Jkmz1xNUDG06HmJro
         eGAV1qzNMe4ulbsqjSO4aAzKpyAp7noQg0gTXoITZq/uvf731kKlpnj8dTgjokZy3t5q
         DFFR0ZsgBUG0UebBskwEWPr7K4cfUMU2I2UdHCx/5uGOstBWvQWHf4fH8wZ79dqqyZ1T
         0P2DeUT8XlCtpm0F6Rry2RGVO64jfvRmCEyfhHsFoEZpRsqCehM/fwCbePiD5x6SmxVU
         ix3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xbOwsNa5EgRVEPC6RsF2q+pJppK0zBbrf2UvDq3Bu3k=;
        b=SFGXns8sM96fChiNz+W9/ehfmkcqvGX4m3TSr6QqFfBQcy3E6kI0YAZ5Ku0bovnSl0
         hzYz9cLaD+azWcz9XcgmXXTyivv0Ebh+pflsqbrjsfXMxrpUYiPTSbywHmgJV9b3LE1f
         kn2I2d8EWW62rMqqAMu4vUysuvyRTpAuqCeiS/DqfE7zEJD/IUfI9T3rj77nNAj9/S6k
         DEaN7rW2pxwM4YNOb4ySE06sAAtwiOohs/MYxEqfldP/l0C6t8Dck4huY4OQ/ucxQUwR
         qZ1Pj0QDyrLzffzLAFKlXRB/8yunvPz1bnONhlbEl+sSLGQfsUMPaYvSp4HFS+IdBaEC
         jbfA==
X-Gm-Message-State: AOAM530Xi/wBfHFVNzlD7UG0qtC4JjeVc3aOqpneMta2lLo+IvLJsk6Q
        9itzdBL0r2Pi5xsFSapQDNmnM6uhTrJ4SZKI
X-Google-Smtp-Source: ABdhPJwcy1/s5l+4NNPfPxPf/3fOq3OSdL83y3SCKNP9lqRadYetgpYN140fV8IH3Z65QGUNZkMcvA==
X-Received: by 2002:ac2:5449:: with SMTP id d9mr2358527lfn.546.1603885955039;
        Wed, 28 Oct 2020 04:52:35 -0700 (PDT)
Received: from [192.168.1.211] ([188.162.64.219])
        by smtp.gmail.com with ESMTPSA id s1sm507051lfs.66.2020.10.28.04.52.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 04:52:34 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: qcom: sm8250: remove wakeup-parent for TLMM
 node
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20201027015420.908945-1-dmitry.baryshkov@linaro.org>
 <20201028044056.GA3151@builder.lan>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <947976df-05c5-bc6d-455f-e71aa061055f@linaro.org>
Date:   Wed, 28 Oct 2020 14:52:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <20201028044056.GA3151@builder.lan>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/10/2020 07:40, Bjorn Andersson wrote:
> On Mon 26 Oct 20:54 CDT 2020, Dmitry Baryshkov wrote:
> 
>> On SM8250 TLMM doesn't use PDC interrupt controller for wakeup events.
>> Instead it handles them on their own (not implemented yet). In addition
>> setting wakeup-parent property to &pdc will result in parent hwirq being
>> set to ~0UL, which interact badly with the irqdomains trimming code. So
>> remove the wakeup-parent property.
>>
> 
> Would you accept this patch instead?
> 
> https://lore.kernel.org/r/20201028043642.1141723-1-bjorn.andersson@linaro.org

not found


-- 
With best wishes
Dmitry
