Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 296D3990C8
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 12:29:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726852AbfHVK12 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Aug 2019 06:27:28 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:42463 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725797AbfHVK12 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Aug 2019 06:27:28 -0400
Received: by mail-lj1-f196.google.com with SMTP id l14so5019781ljj.9
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2019 03:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1sY/jJYsZ/Y8HplWdr+MRRPypzy+MY6MFI9cf4FZtZo=;
        b=bpk27jgMbEtZBVqG1CXQ3WQkCcbGFhVLCR/qFQYW8++ezehtCiq2LgQ0huJWT56wHd
         AcbSluVFZbuyT9vH9RCYjyLVGIODsmeBmIZ8NsIXc9Rc5iiU6gjxfOuBA9nuTDfyRjdb
         55Phb2VI/m2KPNeD8bHWmHOy9aKKXBrP12BGnWg6wtYAWO6X1hiatoJzwTmryhSL9tPe
         RgLYYQcGe85mfC7ZFIZVeKApZNtHPEBfgaT1TAPMuuZFMzX6vzilt5SF9PWrR5d+M2u2
         IiOaIYVErWqtyJlSwf2QPoi35OsnqsiJCZ/+U2aCswFflOsil8XiwVRLc9/K8AmU9Wi3
         l+rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1sY/jJYsZ/Y8HplWdr+MRRPypzy+MY6MFI9cf4FZtZo=;
        b=sxUwTgjKBNIlbEyfgdPz4hZFL1uOCP8++DQm24HKPpgyig4PG8zXHJD+eLwHaKinp8
         mMY+pEvH7+q1d0aQNLynwKsxf4nJZVoU6XfAVeJ4tABf/BNQUik6caq+azIHUeYC9C+z
         quVoMcrtbs+1AVPUL0vRAIdkn2PxKk4Dv9z2uST8jLgYQxSDH5ndRMorcIVzES9QowmB
         mvJrAL2SOB6jdpVVEAoKrS5HjS7VdSscB3xztfNFyDoIo/S7aovgC7RpCbAUgGx7prj0
         qGmtauEf09JkmyBOSsQjoO87zae5zCm4b6CLYZF6+6VY+fdRdRox3869zrMKOM5tfD2K
         I8iA==
X-Gm-Message-State: APjAAAWVpbP3I0+vDp9NvwGAIA9mIf3nngPAZn4lSqFrp7FpZ0dB63Fi
        cQI9xUCTvlrJYNnYX/r2SywGjA==
X-Google-Smtp-Source: APXvYqw9ELcfWAaOIRUHdmTqNqxavdwdByFmys1TchCBhziZhIJ8bAJRlc9uHWY43bt1oOR0dlb94g==
X-Received: by 2002:a2e:a202:: with SMTP id h2mr21448448ljm.146.1566469645923;
        Thu, 22 Aug 2019 03:27:25 -0700 (PDT)
Received: from centauri (ua-84-219-138-247.bbcust.telenor.se. [84.219.138.247])
        by smtp.gmail.com with ESMTPSA id q30sm4371622lfd.27.2019.08.22.03.27.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2019 03:27:25 -0700 (PDT)
Date:   Thu, 22 Aug 2019 12:27:23 +0200
From:   Niklas Cassel <niklas.cassel@linaro.org>
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Andy Gross <agross@kernel.org>, Ilia Lin <ilia.lin@kernel.org>,
        Nishanth Menon <nm@ti.com>, Viresh Kumar <vireshk@kernel.org>,
        linux-arm-msm@vger.kernel.org, jorge.ramirez-ortiz@linaro.org,
        bjorn.andersson@linaro.org, ulf.hansson@linaro.org,
        Rob Herring <robh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 06/14] dt-bindings: cpufreq: qcom-nvmem: Support
 pstates provided by a power domain
Message-ID: <20190822102723.GB8494@centauri>
References: <20190725104144.22924-7-niklas.cassel@linaro.org>
 <20190819100957.17095-1-niklas.cassel@linaro.org>
 <5d5ae389.1c69fb81.cb730.3225@mx.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5d5ae389.1c69fb81.cb730.3225@mx.google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 19, 2019 at 10:59:36AM -0700, Stephen Boyd wrote:
> Quoting Niklas Cassel (2019-08-19 03:09:57)
> > +
> > +soc {
> > +....
> > +       cprpd: cpr@b018000 {
> 
> Maybe node name should be 'avs' for the industry standard adaptive
> voltage scaling acronym?

I see where this is coming from, but "git grep avs" gives a single result.

Also, since the label is cprpd, it doesn't make sense to simply rename the
node name, and I don't think that avspd would be a good name, since it is
less correct.

So if you don't insist, I would prefer to leave it as it is.

> 
> 
> > +               compatible = "qcom,qcs404-cpr", "qcom,cpr";
> > +               reg = <0x0b018000 0x1000>;
> > +               ....
> > +               vdd-apc-supply = <&pms405_s3>;
> > +               #power-domain-cells = <0>;
