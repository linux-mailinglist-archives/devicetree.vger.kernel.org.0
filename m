Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C20F3A3039
	for <lists+devicetree@lfdr.de>; Thu, 10 Jun 2021 18:09:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230220AbhFJQKz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Jun 2021 12:10:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230181AbhFJQKy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Jun 2021 12:10:54 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6710C061574
        for <devicetree@vger.kernel.org>; Thu, 10 Jun 2021 09:08:57 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id i12-20020a05683033ecb02903346fa0f74dso181884otu.10
        for <devicetree@vger.kernel.org>; Thu, 10 Jun 2021 09:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=5uP5iLfFupjyBLuiOoisduDWJq2tkx0DsmOUWz3W6Ww=;
        b=KJk9pf144tgcWmwgrQOKxKZ+liNo/T1DDE17bORb7Z440NB2/fV2V395FYl3K+KDAf
         ZlfMlgh69//cXruFeEVBXbeZVLYtYV/NuzYNiclkzD89KX1DhfyYLVleXeIze+icOiuN
         3EMuxVroom39IUujq3f4cSpmq8tXzAWVxGrtarTolhG6/TUX+ejv8rxF0yueArsVFEpe
         yzoOjkzKGaKH8K71Cr2ZY15EE8PPEW/wBLYTs6sPyTU0qlQbglLtU5k1gqCnuEjTM2aB
         8WQwL5IZLxIoz4BUCRnZJ0fhzbQlF/1oNiW4MMInxDOZ3Of/2AmE8IbPyXTazGEiTYc0
         2vGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5uP5iLfFupjyBLuiOoisduDWJq2tkx0DsmOUWz3W6Ww=;
        b=da5qIgidfuTDNY8Xn00l86z+M5ggJzhs0Vn+EponpEgs5SnQFkQT7PpAMffVDf63ER
         dqyXGBpQwlWZf2BrGByjO4Vrxw2QaR94iq0gA8v9Ya287mBFSVXgdRJ/zQbXAGy0Ne5j
         BGZxj1xXKymKTNZo7SwansQmkfbOregxI+2WVvrWCXr+nQokIoAOGvopCywuGUeYKFsd
         q7qSk9T2xPDHSz62zU4SgOAPjKgdaNC6mbsJjbABJ0bVvW2bKFFQB6qQSSAF9qLITU6C
         8uKg9vJZAUzmvjLAR8L3+NJWyOvpVjxUAhS0cmN48+LwW9Q+WltqQ4fi4ZaWgelQXQvP
         guGA==
X-Gm-Message-State: AOAM530wMmhk+eQbMaBwFClZ4cgejhShQ2yOU1b2XskcWM6tkDjv5tKn
        yfp8kumRyzKbJNc6eo/vm2f2GQ==
X-Google-Smtp-Source: ABdhPJw0/Tai/WrU0WNiviZHv/AlybRq898/vT8qr76AZ5mSnImIIRwYlU/Zxei+yYCpCfPVv92xCg==
X-Received: by 2002:a9d:7e97:: with SMTP id m23mr3245416otp.286.1623341337327;
        Thu, 10 Jun 2021 09:08:57 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id h23sm632294oih.30.2021.06.10.09.08.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 09:08:56 -0700 (PDT)
Date:   Thu, 10 Jun 2021 11:08:55 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Felipe Balbi <balbi@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Felipe Balbi <felipe.balbi@microsoft.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: add initial device-tree for
 Microsoft Surface Duo
Message-ID: <YMI5F5cskjXuCcwm@builder.lan>
References: <20210603122923.1919624-1-balbi@kernel.org>
 <875yyl28bp.fsf@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <875yyl28bp.fsf@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 10 Jun 07:49 CDT 2021, Felipe Balbi wrote:

> Felipe Balbi <balbi@kernel.org> writes:
> 
> > From: Felipe Balbi <felipe.balbi@microsoft.com>
> >
> > Microsoft Surface Duo is based on SM8150 chipset. This new Device Tree
> > is a copy of sm8150-mtp with a the addition of the volume up key and
> > relevant i2c nodes.
> >
> > Signed-off-by: Felipe Balbi <felipe.balbi@microsoft.com>
> 
> Gentle reminder here.
> 

Sorry, it's been sitting in my local tree for a few days, but now it's
pushed out.

Thank you,
Bjorn
