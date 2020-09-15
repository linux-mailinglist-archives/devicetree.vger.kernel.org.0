Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BBAA626B7D9
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 02:31:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726824AbgIPAa5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 20:30:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726738AbgIONpk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 09:45:40 -0400
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com [IPv6:2607:f8b0:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37B94C061A32
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 06:43:41 -0700 (PDT)
Received: by mail-ot1-x343.google.com with SMTP id e23so3256999otk.7
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 06:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=B9DG7AFGOCi4fDIA/pebWsaF98Vfs0PhS8LEaercJUM=;
        b=owBOhW6EC7dR5wsl+J+VKIlsez0gsh9VM0JvmxWSZxWow81fml9LtpKBl4uX3tavXV
         lElVW/PinQeJb5cLZZBBk/hdlHr1yq52Wkrb0rFD4RVn9+JEFDqKJU8Y7VZ5bhPUPNdA
         myx4gU3MvUS5aCqwKxtuOgU3CQJAApWfYy5D9KWp7VZd5rokkIOL6Q9OrP9I8YmnI7Mv
         2PyW4S3jl2HsHVAiOLxJfZXZRs7z5AzcfxmmvFnMN//9OXoO3FQ/RI2Z3H0B74PlaAfI
         RpQegVQmIbVCJjxHPj8nkKUT7KsN2AiACJCN1d6eHiY+GRQkr0sp8YN6uRo0yzcY7IdA
         ICfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=B9DG7AFGOCi4fDIA/pebWsaF98Vfs0PhS8LEaercJUM=;
        b=aSsLgUl+v8LhWrzgbH5xGtBpo5p5vLf1IQVLpP24eTbAcrMyjUMq+HEkYg3gAxu5ku
         tdGhe0/R8Gl+6daHQMxTruQVrqww+z9bYNHnBekHMW4oyLKWOGaPPKSnxdkV3bdjBfBY
         4deMrjfUK09beDEvPsn+W4oEc2U1piMV0FLznzDAI3FCz3S69edtpdAuF86goLs+2sbJ
         txquaiNefiLbeTav8SDdJGcS+iZmoe8TzymwsxJIWJpkgmhpaxKM/EYwflj0Nuywe/FV
         nF8NjQUyLEMo0Qh1uEiR198ryYTOk6V3iz5nDDYbmXTmd1pcIatxlM4c0k9KF/hHmFne
         dcng==
X-Gm-Message-State: AOAM533ueBJaB/5Wd6qcQ4waaka2rtlnd0DiQFOME3O5Rmso97LRnJda
        5WLut46Awn0uxBUxnBsZXe7n6Q==
X-Google-Smtp-Source: ABdhPJwGr+GRet1pRxe3nZ/L2fOWfupvdFYKrPB2ph9ZOkRDUTpxsjgx1wdTPacAmCm2yl+UzZeslA==
X-Received: by 2002:a9d:7b48:: with SMTP id f8mr13079469oto.297.1600177420799;
        Tue, 15 Sep 2020 06:43:40 -0700 (PDT)
Received: from yoga ([2605:6000:e5cb:c100:8898:14ff:fe6d:34e])
        by smtp.gmail.com with ESMTPSA id w19sm5635176otq.70.2020.09.15.06.43.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 06:43:40 -0700 (PDT)
Date:   Tue, 15 Sep 2020 08:43:35 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     nguyenb@codeaurora.org
Cc:     cang@codeaurora.org, asutoshd@codeaurora.org,
        martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Avri Altman <Avri.Altman@wdc.com>,
        Vinod Koul <vkoul@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 1/2] scsi: dt-bindings: ufs: Add vcc-voltage-level for
 UFS
Message-ID: <20200915134335.GE670377@yoga>
References: <cover.1598939393.git.nguyenb@codeaurora.org>
 <0a9d395dc38433501f9652a9236856d0ac840b77.1598939393.git.nguyenb@codeaurora.org>
 <20200915044154.GB670377@yoga>
 <748d238a3d9e53834a498c6f37f9f3c9@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <748d238a3d9e53834a498c6f37f9f3c9@codeaurora.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 15 Sep 03:14 CDT 2020, nguyenb@codeaurora.org wrote:

> On 2020-09-14 21:41, Bjorn Andersson wrote:
> > On Tue 01 Sep 01:00 CDT 2020, Bao D. Nguyen wrote:
> > 
> > > UFS's specifications supports a range of Vcc operating
> > > voltage levels. Add documentation for the UFS's Vcc voltage
> > > levels setting.
> > > 
> > > Signed-off-by: Can Guo <cang@codeaurora.org>
> > > Signed-off-by: Asutosh Das <asutoshd@codeaurora.org>
> > > Signed-off-by: Bao D. Nguyen <nguyenb@codeaurora.org>
> > > ---
> > >  Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt | 2 ++
> > >  1 file changed, 2 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt
> > > b/Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt
> > > index 415ccdd..7257b32 100644
> > > --- a/Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt
> > > +++ b/Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt
> > > @@ -23,6 +23,8 @@ Optional properties:
> > >                            with "phys" attribute, provides phandle
> > > to UFS PHY node
> > >  - vdd-hba-supply        : phandle to UFS host controller supply
> > > regulator node
> > >  - vcc-supply            : phandle to VCC supply regulator node
> > > +- vcc-voltage-level     : specifies voltage levels for VCC supply.
> > > +                          Should be specified in pairs (min, max),
> > > units uV.
> > 
> > What exactly are these pairs representing?
> The pair is the min and max Vcc voltage request to the PMIC chip.
> As a result, the regulator output voltage would only be in this range.
> 

If you have static min/max voltage constraints for a device on a
particular board the right way to handle this is to adjust the board's
regulator-min-microvolt and regulator-max-microvolt accordingly - and
not call regulator_set_voltage() from the river at all.

In other words, you shouldn't add this new property to describe
something already described in the node vcc-supply points to.

Regards,
Bjorn

> > 
> > Is this supposed to be 3 pairs of (min,max) for vcc, vcc and vccq2 to be
> > passed into a regulator_set_voltage() for each regulator?
> Yes, that's right. I should include the other power supplies in this change
> as well.
> > 
> > Or are these some sort of "operating points" for the vcc-supply?
> > 
> > Regards,
> > Bjorn
> > 
> > >  - vccq-supply           : phandle to VCCQ supply regulator node
> > >  - vccq2-supply          : phandle to VCCQ2 supply regulator node
> > >  - vcc-supply-1p8        : For embedded UFS devices, valid VCC range
> > > is 1.7-1.95V
> > > --
> > > The Qualcomm Innovation Center, Inc. is a member of the Code Aurora
> > > Forum,
> > > a Linux Foundation Collaborative Project
> > > 
