Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6A3F21829F
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 01:17:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727369AbfEHXRT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 19:17:19 -0400
Received: from mail-yw1-f67.google.com ([209.85.161.67]:44099 "EHLO
        mail-yw1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726891AbfEHXRT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 May 2019 19:17:19 -0400
Received: by mail-yw1-f67.google.com with SMTP id e74so316004ywe.11
        for <devicetree@vger.kernel.org>; Wed, 08 May 2019 16:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=s0XmE/SSKgdB2Zi6D0Xro94Z8cgKXXoHmAWbL6G9FWo=;
        b=sLmnrLoj9lksRIXKKwys/IS3j0vPyEkYExfwLWVWdBx4HZSJVlsq6V+Vcf0ziNQQXz
         tLNKweEYQZF5GPp1himBK4SukfKMRv8LNyieGXS9Q4p1HiRGZOSAgzaLM70MkdANCFQw
         AQoOZauRkNQ7f08wPTDIbVVbeXycI6ItQ4bsLu4BBd48f5j66b4Q2cy4cY30dpXqvtmI
         3rDnWpAwEynr3nOGBGWDrWG+3tscb8+2mNShKm9w2EsL4pzymELY3CkHRmw95lrldL7E
         m6zskT1VxOvRzv1Bisnr3WAbliDNqSKsBQDpuoy5IoynKxtd6+D8jt/dxoaccO1izrH7
         GMSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=s0XmE/SSKgdB2Zi6D0Xro94Z8cgKXXoHmAWbL6G9FWo=;
        b=LGhVbClTzmp/jQ5aCtybYjvvc1l+z73tizhbYd4wU+9xOWvSjSwUP+4e15pyvPW/45
         xhdvtehRGsiNaooOvw4K3q4GHTCs1aw9B+IeV6jfjWEPZzCYtu/duHRJ8p1nC9uqFZ1D
         JRGsRUV836q4g6PeEOOhaEGnbBIdYmLUVCQmbrydd8B0jacN8RSqTg5P8CwUUzM5hkCb
         X5Q6rtA0alAOe5kP7wGcasCLMTtjIbmsaGzDDrXounOKtYylPUZ+IAZtedDJ50YfPvaH
         69ft7D6roJ1nudm9wgFzhy3Gji+ym1HPtfwy8Sk563w34BrBkAwIFB/qoyr4DG1zXRbb
         n1yg==
X-Gm-Message-State: APjAAAXiI2n73lcyrR89J0wc1mQg9wfKQKquIMFE+hJZTPJvuQzBAywV
        1Hx+Jw4CP/Z3YnBtnQKJ7kijJQ==
X-Google-Smtp-Source: APXvYqwCScrOtsn/r0nbplNIVpXXh8yEgVNfGi8tKe9k+OX0Y8w8/cROWDlp9BASceZ1pGqP2kWGog==
X-Received: by 2002:a81:170e:: with SMTP id 14mr232136ywx.238.1557357438787;
        Wed, 08 May 2019 16:17:18 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li931-65.members.linode.com. [45.56.113.65])
        by smtp.gmail.com with ESMTPSA id v128sm110717ywd.24.2019.05.08.16.17.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 08 May 2019 16:17:17 -0700 (PDT)
Date:   Thu, 9 May 2019 07:17:06 +0800
From:   Leo Yan <leo.yan@linaro.org>
To:     Suzuki K Poulose <suzuki.poulose@arm.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com,
        mathieu.poirier@linaro.org, mike.leach@linaro.org,
        xuwei5@hisilicon.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        agross@kernel.org, david.brown@linaro.org,
        linus.walleij@linaro.org, liviu.dudau@arm.com,
        Sudeep.Holla@arm.com, Lorenzo.Pieralisi@arm.com,
        orsonzhai@gmail.com, baolin.wang@linaro.org, zhang.lyra@gmail.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        guodong.xu@linaro.org, zhangfei.gao@linaro.org,
        haojian.zhuang@linaro.org, cphealy@gmail.com, andrew@lunn.ch,
        lee.jones@linaro.org, zhang.chunyan@linaro.org
Subject: Re: [PATCH v2 00/11] dts: Update DT bindings for CoreSight
 replicator and funnel
Message-ID: <20190508231706.GA5840@leoy-ThinkPad-X240s>
References: <20190508021902.10358-1-leo.yan@linaro.org>
 <9c56323b-7b14-c662-b824-ed60fbb1638f@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9c56323b-7b14-c662-b824-ed60fbb1638f@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 08, 2019 at 03:29:12PM +0100, Suzuki K Poulose wrote:
> 
> On 08/05/2019 03:18, Leo Yan wrote:
> > Since the DT bindings consolidatoins for CoreSight replicator and funnel
> > is ready for kernel v5.2 merge window [1], this patch set is to update
> > the related CoreSight DT bindings for platforms; IIUC, this patch set
> > will be safe for merging into kernel v5.2 because the dependency
> > patches in [1] will be landed into mainline kernel v5.2 cycle.
> > 
> > In this patch set, it tries to update below two compatible strings to
> > the latest strings:
> > 
> >    s/"arm,coresight-replicator"/"arm,coresight-static-replicator"
> >    s/"arm,coresight-funnel"/"arm,coresight-dynamic-funnel"
> > 
> > Please note, some platforms have two continuous patches, one is for
> > updating static replicator compatible string and another is for dynamic
> > funnel change; and other platforms have only one patch since it only
> > needs to change for dynamic funnel.
> 
> This is now misleading ;-), but that doesn't matter.

Oops ...

> For the entire series :
> 
> Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Thanks for reviewing!
