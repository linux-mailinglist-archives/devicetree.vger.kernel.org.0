Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B50A016841F
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2020 17:51:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726823AbgBUQvj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Feb 2020 11:51:39 -0500
Received: from mail-pl1-f196.google.com ([209.85.214.196]:34613 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726550AbgBUQvj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Feb 2020 11:51:39 -0500
Received: by mail-pl1-f196.google.com with SMTP id j7so1097782plt.1
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2020 08:51:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tEM+tesVTVelhRXwBYSeP4xDuDSKuUzJHlaSkE25t30=;
        b=DtEiys/4qhH8hyv+tP020VfRN3Jsc8PfosTjpDz8jJXXoNQnmpflnAl/Z/Ke1pMVx4
         klW6vkgnfzp1+C9/Auk+0R6WmKjTSn0QrhLR/7oGTUXilWZQIpq77IHSeel/LOEsMBJA
         EzjW1Bbrq19YEytPpTAeh44rz9FuRnjIO6MR/Z+uQ4qCVnCOWJrV01+sTWhKsWex8p8i
         IzOEFbINdr1njk6bCmzgrHVWnrEjoWNrn1GmiRoYWeQma7l3xjNJZAVpgMoPmiSFCnJw
         Gt6hzyCQmp8mKZf0da3x1LAz7MFh+KHPSoWwgotDTLtYCMlvuqb+/w0Ld2lLcBfAtqkc
         YwzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tEM+tesVTVelhRXwBYSeP4xDuDSKuUzJHlaSkE25t30=;
        b=gnlTqNWbMJ+hMmCcL5bGRZEJyOvtKcDrk8k8bPImGXelJpguDS7nuaE3csa34V31Ij
         yPy8GU1tkw5/LNvPqiUzWiAsbEJZ1H+xXVbNBRcmOS+z6/g6sr5vbSyiXaRQGqAxu68g
         7wvbb9Y99kurRDPd2skYABh/k1mL4uj2TsPXooPp/5fE7IK5b59cmaQLwjaAL80NqHEQ
         x9uzOzBFl4w/AcOKKX5evcBKU9ZOgS5+n3k9YHhU5uXrWk8H9bZatZBcc8WyAEkQVpmK
         IuDi+rY0TMD5PNhJxnbzqYhGON9kgLot+5KUtvrnZWwTnNhilK4y0J8s61F8fofCmaBJ
         x9Qg==
X-Gm-Message-State: APjAAAV2VlO6s2u8Az+yAczXzBMyMrNRe55XD9BHDSSniJ7x2pCns5zm
        i//ZToGnqjoRMAMh9PdzLXoG2w==
X-Google-Smtp-Source: APXvYqzT+t3dCacWeKeKTixALPmwUeIlG7vCIxzI6q77A91pVv1ZgKkZhV/aajDg05G9jtXbeNxFcQ==
X-Received: by 2002:a17:90a:c214:: with SMTP id e20mr4039464pjt.98.1582303897356;
        Fri, 21 Feb 2020 08:51:37 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
        by smtp.gmail.com with ESMTPSA id ev5sm3104850pjb.4.2020.02.21.08.51.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2020 08:51:36 -0800 (PST)
Date:   Fri, 21 Feb 2020 09:51:34 -0700
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     Suzuki K Poulose <suzuki.poulose@arm.com>
Cc:     mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, coresight@lists.linaro.org,
        linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        robh+dt@kernel.org, maxime@cerno.tech, liviu.dudau@arm.com,
        sudeep.holla@arm.com, lorenzo.pieralisi@arm.com, agross@kernel.org,
        corbet@lwn.net
Subject: Re: [PATCH v9 08/15] coresight: cti: Enable CTI associated with
 devices.
Message-ID: <20200221165134.GA25043@xps15>
References: <20200210213924.20037-1-mike.leach@linaro.org>
 <20200210213924.20037-9-mike.leach@linaro.org>
 <04b739fd-7bb3-bd28-8013-918e7d4dfcb7@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <04b739fd-7bb3-bd28-8013-918e7d4dfcb7@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 21, 2020 at 12:20:17AM +0000, Suzuki K Poulose wrote:
> Hi Mike
> 
> Sorry for the delay. one minor comment below.
> 
> On 02/10/2020 09:39 PM, Mike Leach wrote:
> > The CoreSight subsystem enables a path of devices from source to sink.
> > Any CTI devices associated with the path devices must be enabled at the
> > same time.
> > 
> > This patch adds an associated coresight_device element to the main
> > coresight device structure, and uses this to create associations between
> > the CTI and other devices based on the device tree data. The associated
> > device element is used to enable CTI in conjunction with the path elements.
> > 
> > CTI devices are reference counted so where a single CTI is associated with
> > multiple elements on the path, it will be enabled on the first associated
> > device enable, and disabled with the last associated device disable.
> > 
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >   drivers/hwtracing/coresight/coresight-cti.c  | 129 +++++++++++++++++++
> >   drivers/hwtracing/coresight/coresight-cti.h  |   1 +
> >   drivers/hwtracing/coresight/coresight-priv.h |  12 ++
> >   drivers/hwtracing/coresight/coresight.c      |  71 +++++++++-
> >   include/linux/coresight.h                    |   4 +
> >   5 files changed, 212 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> > index 77c2af247917..c4494923d030 100644
> > --- a/drivers/hwtracing/coresight/coresight-cti.c
> > +++ b/drivers/hwtracing/coresight/coresight-cti.c
> > @@ -4,6 +4,7 @@
> >    * Author: Mike Leach <mike.leach@linaro.org>
> >    */
> > +#include <linux/property.h>
> >   #include "coresight-cti.h"
> >   /**
> > @@ -440,6 +441,131 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
> >   	return err;
> >   }
> > +/*
> > + * Look for a matching connection device name in the list of connections.
> > + * If found then swap in the csdev name, set trig con association pointer
> > + * and return found.
> > + */
> > +static bool
> > +cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
> > +		      struct coresight_device *csdev)
> > +{
> > +	struct cti_trig_con *tc;
> > +	const char *csdev_name;
> > +
> > +	list_for_each_entry(tc, &ctidev->trig_cons, node) {
> > +		if (tc->con_dev_name) {
> > +			if (!strcmp(node_name, tc->con_dev_name)) {
> > +				/* match: so swap in csdev name & dev */
> > +				csdev_name = dev_name(&csdev->dev);
> > +				tc->con_dev_name =
> > +					devm_kstrdup(&csdev->dev, csdev_name,
> > +						     GFP_KERNEL);
> 
> In the extreme rare case of an allocation failure, we may want to
> check if the allocation was successful or not, rather than silently
> ignoring it. With that fixed,

Line 419 and 423 in patch 1 need the same attention.

> 
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
