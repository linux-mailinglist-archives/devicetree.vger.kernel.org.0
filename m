Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B726C396985
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 00:04:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231717AbhEaWGh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 May 2021 18:06:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231240AbhEaWGh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 May 2021 18:06:37 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3A1EC061574
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 15:04:55 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id d25-20020a0568300459b02902f886f7dd43so12290239otc.6
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 15:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ue5n0UpI5EqeaS+j7+t9xnc2N6UugI+y/wlKjXvZ9B0=;
        b=tQae9Nr2rxLB0lFr7vREg1l/5tofxK6SHjrIwZUN/4EAM3zC3cbO2xQJg6KtQ24jz+
         fWfNXqs4Z5P5sqyBew2Owpq1QL/8P5fyONiJQ6ehvJCx2DyqEoFkvhpywx98FDB+jp7E
         gbBNnYT9EtrB6SJY7y6Sh0omYq/WNUxFEfEDtvxHaJHf6uW0MGQlvwnS3fCqbY7gZk/i
         dEz5f0BhlXez/vzQpG8TcYn12w83Ri8zq1LQK+8eI2qtBBC2CYQeast4ai3R2rEfciA4
         s2TPKzK+hpdi2YhOXRGMFwnAgMZNz27elJAQ3HjHokhBB3jg/uJklrjNbIH0uoKU6VrN
         +2fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ue5n0UpI5EqeaS+j7+t9xnc2N6UugI+y/wlKjXvZ9B0=;
        b=ZTvrpv1AKio2FV2R1SXnijFtsyVbH3MyT36se4Vj7SNEZ64MSany2QM/L7n77T8HMG
         6WmHQQwZNSh7zP34VJVG9UuwyAs/XTrqARmABEupl98X4dzAOjvCE4twry7iTsaZvkYi
         vjY7pGba/O5V5Qch6S8yc8zOPVc5CvggwRfZ0MA757Mb/JB0MAiPsaX9ItVX+Yrbq4az
         hNU0TiXjQ4O3ooMQ1EMcmGeFqZxzsmaid1WAWVubQ5o8dXethXBRQBSdb1OWuz9748f+
         LSZTNtmnkh56lR+hjnvq2mTGthvG+Y4G7/7NNVyKgkMW1TkP3qrisopb8/8yjbcD2Xn/
         5NhA==
X-Gm-Message-State: AOAM53195V3cDLmnyB0AxMXwWmqnpaTRKflOlhVVzUJXVBY9XRxh1LQZ
        pNE0jH6D+0nGf/GH43YMfYrFcw==
X-Google-Smtp-Source: ABdhPJxcwoUVpexwvq3Wsn8EnHbKmjTIh8RHtDZQJb8ubOn5aemktzs2jcu5a9r02dk1rNsVjFPZrw==
X-Received: by 2002:a05:6830:2703:: with SMTP id j3mr7260923otu.140.1622498695281;
        Mon, 31 May 2021 15:04:55 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id f80sm1999395otf.32.2021.05.31.15.04.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 May 2021 15:04:54 -0700 (PDT)
Date:   Mon, 31 May 2021 17:04:53 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Sibi Sankar <sibis@codeaurora.org>, robh+dt@kernel.org,
        sboyd@kernel.org, agross@kernel.org, mani@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/5] reset: qcom: Add PDC Global reset signals for WPSS
Message-ID: <YLVdhU3Zz/TWtwCX@builder.lan>
References: <1619508824-14413-1-git-send-email-sibis@codeaurora.org>
 <1619508824-14413-5-git-send-email-sibis@codeaurora.org>
 <0c5f747fe0a3f757a4160e4fd28cc2b56a57a39d.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0c5f747fe0a3f757a4160e4fd28cc2b56a57a39d.camel@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 27 Apr 02:58 CDT 2021, Philipp Zabel wrote:

> Hi Sibi,
> 
> On Tue, 2021-04-27 at 13:03 +0530, Sibi Sankar wrote:
[..]
> Acked-by: Philipp Zabel <p.zabel@pengutronix.de>
> 
> for the whole series to go through the qcom tree, or let me know if you
> want me to pick up patches 2-4 next round.
> 

Philipp, please do take patch 2-4 through your tree, that way we avoid
any potential conflicts in the driver - and things will come together
nicely for validation in linux-next anyways.

Regards,
Bjorn
