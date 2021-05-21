Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D29D38BD2B
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 06:10:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231531AbhEUEL6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 00:11:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbhEUEL5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 00:11:57 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC7DDC061763
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 21:08:38 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id b13-20020a17090a8c8db029015cd97baea9so6431529pjo.0
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 21:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VHyMUInNIJTIhDioOeZEKYgw1nctt2gOjWOJZGWfC44=;
        b=l1hpR/umYLAioxI5wRR99memYFOF6eJCrV0iNCBLOerms10JUUgGKs1ub7Mib5fehS
         1awP9vPLNg76tmx4jIVoDpIKaQ9dGe5NhxjBovUbv0zG//jETf4mBIxmcMRDTWZ9/FFI
         pkoyZbhfRfWkmlHA8p0wL6nJkSEDj3wfwSS8DF2+epNlQ6Yxsa2bs3tL5Ke/KaDl1XFI
         AgvAycVddrB8xOfzv7fAatWFHEhYEuH6SS9YBl/6ZdDOzEomtrURaJfEc7n2VovJVckU
         Vw0Sgm7UFXKKrwBwCA21hqS5SF6RbywAvUPXV/RWs0VOom8sIdb7xnU+/O6Ce9uNozvU
         fRYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VHyMUInNIJTIhDioOeZEKYgw1nctt2gOjWOJZGWfC44=;
        b=mj1osEFoxOBvkK5ZJnut3FPQz/5uWCM2ui3BLPsIVAwB26W6MYz/QNZ60QdC7mFRxy
         tBhIz7NJgzR1paaxrqN+zFCyBeokQcTZPj+wuhrKCmNg4YbTtRy6N5BaQRTFAPW4zbXH
         CuAObZSF3q+NxgYyY8Ar7jUSpBlEWqNtIZ8Pu3QEN/DtOPDlvRaqLUPz2gWucP5vhdhm
         FXQAbGuaU2ys2EL6l+plgg/dNiI/QUcUKqVwwBploMUZFHIkox+hNHhOC9llcn+kKtkX
         10icOkFJCveZM8nRVcheNcrFsSzjQI+vWKzgSMVANQCLfN+GaRAgr92IWIAYSDl0WgpE
         jlpw==
X-Gm-Message-State: AOAM533BdJULunMfptDZ7Q8bdihVNqYSPUrw2Qq+JjgholGQ5q1ebw1/
        XpYFKL8bqDomeoDPVHZKtk8fwQ==
X-Google-Smtp-Source: ABdhPJz5aUoCodSHgzN7//sM5PwT/Ov9jm7yqB+GNTRt88+r1WjBSxlYxn0IaVUJPb1m+8AX5fmIJA==
X-Received: by 2002:a17:90a:2:: with SMTP id 2mr8924993pja.107.1621570118404;
        Thu, 20 May 2021 21:08:38 -0700 (PDT)
Received: from localhost ([136.185.154.93])
        by smtp.gmail.com with ESMTPSA id u21sm3063486pfm.89.2021.05.20.21.08.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 21:08:37 -0700 (PDT)
Date:   Fri, 21 May 2021 09:38:34 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Hector Yuan <hector.yuan@mediatek.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v4] dt-bindings: dvfs: Add support for generic
 performance domains
Message-ID: <20210521040834.3rzsjkveoyugfotl@vireshk-i7>
References: <20210517155458.1016707-1-sudeep.holla@arm.com>
 <1621284311.383362.3157708.nullmailer@robh.at.kernel.org>
 <20210519112041.olwl35irvcbjxrka@bogus>
 <CAL_JsqK-LpDQWh9RsLsGPEQ53n6s0+Q7ioVikSm1jZuoCWAgnA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqK-LpDQWh9RsLsGPEQ53n6s0+Q7ioVikSm1jZuoCWAgnA@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20-05-21, 14:43, Rob Herring wrote:
> Not allowed because I can't turn this check on by default until we get
> rid of the existing 80 or so. But it is a new check and Viresh already
> applied, so oh well.

I can always drop it :)

-- 
viresh
