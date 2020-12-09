Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08E9E2D3C26
	for <lists+devicetree@lfdr.de>; Wed,  9 Dec 2020 08:25:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727115AbgLIHZf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Dec 2020 02:25:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726718AbgLIHZf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Dec 2020 02:25:35 -0500
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 497FDC061794
        for <devicetree@vger.kernel.org>; Tue,  8 Dec 2020 23:24:55 -0800 (PST)
Received: by mail-pf1-x441.google.com with SMTP id c79so452834pfc.2
        for <devicetree@vger.kernel.org>; Tue, 08 Dec 2020 23:24:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hzo5HNua2os1vDZs/ckGMlH2TN4SzogYdEgJdyYhqtU=;
        b=WULBjBtnKb51kdRBcJwGeibc/mgIfSyYIg5m7uc3bNVrkkmyw91cRagDPlK4+aHaTG
         Nk1C9+CYZ0kdY0DeyllySk/PRQQ/vKWRKf2oKRV1HMUy3wedO8OrQsFGJL/qR8+Wt3OZ
         kD/Zz3Vm+2qCmj+ajT1qtH7dN3ZJPVF3C6sY2XUny/mQlmDgrj7jGWFX4uHggs+o/IX6
         x4e+oYc7zN6HAxOaq3dITflBHDPK9CdOp/3NvJluonRLEPaR0UFJD4DpM37uma19r6X4
         CqgiLSclxeD75OZPI8Z42nHJnsJPIA3n/42mvh52F5Y6YIzgRfHAhnFsPs3m7d4npkKV
         c1FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hzo5HNua2os1vDZs/ckGMlH2TN4SzogYdEgJdyYhqtU=;
        b=YrW6A9OqG3FvmtHmdxNMqsxyDJMbnY8QYYJYqQnVaRMwdZXAOc8T6SxJeshhOujK+S
         bgLWiCid7Kj6ySu6PzPIi9YvSXgI/UlnXhVbw6lRkI0LTGpFIpy94glYIg1qt1uGP1sQ
         PO0k841WnpDLWHB5WHUt65fE/s/ut1nWdLB6k2ZEjB2WAMTnoH0YJxZOKBBDhnY9mprJ
         jZfkDzMkaGuzmDcFRVlJemmrl3ywrX7xMlSWwhi8BLSMTkkVDIN99UyvNA7MJ5F+kTGJ
         2Rbq/RxQIY7JT9RuQleF7hIvx58bCbGMSdRTkG3wm0yJHTMUFWtoyJmx1+wceaTH5Bxg
         gWQg==
X-Gm-Message-State: AOAM532B3DEJgI+wBlQcUyhiYfuOkTqOhdvEJDfo1RXVsblGS0FU/UQ2
        JFMvMx64kl+Yumlo/9IIlbENyw==
X-Google-Smtp-Source: ABdhPJxuGkrAHb8VakoRkGzavuxdQV+slnwhEoNNe2qVJnBW9LdrpM45WP5xTIjkYIhyxqY8/UOitA==
X-Received: by 2002:a62:1615:0:b029:19d:c9f1:f450 with SMTP id 21-20020a6216150000b029019dc9f1f450mr1154637pfw.11.1607498694804;
        Tue, 08 Dec 2020 23:24:54 -0800 (PST)
Received: from localhost ([122.172.20.109])
        by smtp.gmail.com with ESMTPSA id w9sm1218969pfj.128.2020.12.08.23.24.53
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Dec 2020 23:24:53 -0800 (PST)
Date:   Wed, 9 Dec 2020 12:54:51 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Tushar Khandelwal <Tushar.Khandelwal@arm.com>
Cc:     Vincent Guittot <vincent.guittot@linaro.org>,
        linux-arm-kernel@lists.infradead.org, Sudeep.Holla@arm.com,
        morten_bp@live.dk, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Usama Arif <usama.arif@arm.com>
Subject: Re: [PATCH V5 0/2] mailbox: Add mhuv2 mailbox controller's support
Message-ID: <20201209072451.ulbheaafsk6ap56u@vireshk-i7>
References: <cover.1605607138.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1605607138.git.viresh.kumar@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17-11-20, 15:32, Viresh Kumar wrote:
> Hi Jassi,
> 
> Here is the updated version based on your suggestions.
> 
> I feel bad that I haven't implemented the single-word protocol as a
> special case of multi-word one in the earlier attempt. Perhaps I was too
> consumed by the terminology used by the ARM folks in the previous
> version of the driver and the reference manual of the controller :)
> 
> V1/V4->V5

Hi Jassi,

I still don't see this here, hope it is going to get merged in the
coming merge window.

https://git.linaro.org/landing-teams/working/fujitsu/integration.git/log/?h=mailbox-for-next

Please let me know if you have any other concerns. Thanks.

-- 
viresh
