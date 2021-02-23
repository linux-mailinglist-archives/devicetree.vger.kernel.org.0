Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D911C322FED
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 18:48:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233819AbhBWRqo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 12:46:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233820AbhBWRqc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 12:46:32 -0500
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0554FC06174A
        for <devicetree@vger.kernel.org>; Tue, 23 Feb 2021 09:45:51 -0800 (PST)
Received: by mail-pg1-x52c.google.com with SMTP id g4so2198423pgj.0
        for <devicetree@vger.kernel.org>; Tue, 23 Feb 2021 09:45:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=VyGG3ok5+hvim2EHZCOhmqRAJkjtLpgTA1iWhCaD6x0=;
        b=FqgAcuUSeyzDfUyHurWW7F4mjvfwNy68igadpk1ez352+ZeNULvxkGYibJLLplgkO5
         q3u1ZNHMEqO2G5UraZTEoq5G/0cXD6Bnt5aCjqvctqqn4Nfj2xY5vtamgJs6kBcBLxvh
         uvGOoGECAvPXZIkB4fJeawVGE/r0GSiUVcwab4GfCDNrmlsmC5Rv1CW6dkG0OdIsUu7Q
         9IkjFszTrePyCmHnq2SDyrQgYzgucohC2ZtZY1g0k6Ac4t+QygwV9rNtekYPvicm7dOb
         /hIptnnmW77v/TTchOjx20VRMTFiQv5CkrQqtuZN0ZsOI0TvimfyuQmyWemfDy4eriyz
         CkdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=VyGG3ok5+hvim2EHZCOhmqRAJkjtLpgTA1iWhCaD6x0=;
        b=QQLtM77bLblyqRkNmzz72yWdzsUUnYIS60Qc38bCnuqIxsCwZW1hS5D1Lcm3d4Gnqa
         37Uu7oAU35p1k2fTKoNSU8z+mVpgek6WQ+hTNxsUd1A7rdTpMMdmjns00VeyShKm5ryU
         4bhY2mI17GmfjPrdr3VpM80xOM4I0ZPYdomYR0laBS99EarWOyPWKo5VF1cIKuZ+r9Ig
         C1238xQofUYyn4dFgMef2P3NH9C5zDRfYquDsScrOcHtodWbmCz32fJJ+DSsaO4ywfRf
         hAbVfvX1RjEwIRcV5Q9WTQOarcef+AXX5yJEZiPShvTQU1eLtKndRemBI4GCHLWJgvpu
         RFuQ==
X-Gm-Message-State: AOAM532u+4W8CjocdkiYSISMAINb/Xp05tNOiDUe8+qykPhtoob9LRsH
        oW30k/xoeRHoPQhQNLs1itpr
X-Google-Smtp-Source: ABdhPJzA7fHOoHjX3O7xgr26Ckw+I6nd4J989A7PeyvQ1mbO3Fz+HGL78AX7076LEi4TPjBHYyTQLQ==
X-Received: by 2002:a65:654e:: with SMTP id a14mr25432204pgw.265.1614102351464;
        Tue, 23 Feb 2021 09:45:51 -0800 (PST)
Received: from work ([103.66.79.25])
        by smtp.gmail.com with ESMTPSA id s27sm117050pgk.77.2021.02.23.09.45.48
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Feb 2021 09:45:50 -0800 (PST)
Date:   Tue, 23 Feb 2021 23:15:46 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        boris.brezillon@collabora.com
Subject: Re: [PATCH 2/3] dt-bindings: mtd: Add a property to declare secure
 regions in Qcom NANDc
Message-ID: <20210223174546.GA27945@work>
References: <20210222120259.94465-1-manivannan.sadhasivam@linaro.org>
 <20210222120259.94465-3-manivannan.sadhasivam@linaro.org>
 <20210223174922.052f9776@xps13>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210223174922.052f9776@xps13>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Miquel,

On Tue, Feb 23, 2021 at 05:49:22PM +0100, Miquel Raynal wrote:
> Hi Manivannan,
> 
> Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org> wrote on Mon,
> 22 Feb 2021 17:32:58 +0530:
> 
> > On a typical end product, a vendor may choose to secure some regions in
> > the NAND memory which are supposed to stay intact between FW upgrades.
> > The access to those regions will be blocked by a secure element like
> > Trustzone. So the normal world software like Linux kernel should not
> > touch these regions (including reading).
> > 
> > So let's add a property for declaring such secure regions so that the
> > driver can skip touching them.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/mtd/qcom,nandc.yaml | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml b/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
> > index 84ad7ff30121..7500e20da9c1 100644
> > --- a/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
> > +++ b/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
> > @@ -48,6 +48,13 @@ patternProperties:
> >          enum:
> >            - 512
> >  
> > +      qcom,secure-regions:
> > +        $ref: /schemas/types.yaml#/definitions/uint32-array
> > +        description:
> > +          Regions in the NAND memory which are protected using a secure element
> > +          like Trustzone. This property contains the start address and size of
> > +          the secure regions present (optional).
> 
> What does this "(optional)" means? If you mean the property is optional
> then it should be described accordingly in the yaml file, or am I
> missing something?
> 

IIUC, if a property is not listed under "required" section then it is
optional. But I've added the quote here to just make it explicit.

> I wonder if it wouldn't be better to make this a NAND chip node
> property. I don't think a qcom prefix is needed as potentially many
> other SoCs might have the same "feature".
> 
> I'm fine adding support for it in the qcom driver only though.
> 

Hmm, sounds good to me.

Thanks,
Mani

> > +
> >  allOf:
> >    - $ref: "nand-controller.yaml#"
> >  
> 
> Thanks,
> Miquèl
