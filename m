Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D797443C6A9
	for <lists+devicetree@lfdr.de>; Wed, 27 Oct 2021 11:42:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241256AbhJ0JpO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Oct 2021 05:45:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232492AbhJ0JpN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Oct 2021 05:45:13 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B820DC061570
        for <devicetree@vger.kernel.org>; Wed, 27 Oct 2021 02:42:45 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 82-20020a1c0055000000b0032ccc3ad5c1so3752106wma.2
        for <devicetree@vger.kernel.org>; Wed, 27 Oct 2021 02:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=g0D9/rrpIr9fyPZx4h1CXHJNZVxoIHdXAlZrTjtbcgE=;
        b=LWETz/r4gYw0pzFNBt54ka9qNvttyYrzQrMuOaEYSoGW+ysWI5/P7sScKno6UhF5M8
         nDhwytGY1y2SYT6iuq7t9fNFc+vQjbL3l6jtyPahZOS36Se5lknCbysyvsBmqxahoijo
         lIIdadK1k4/DBlmiyin7s6pXa6EwQKHqea5hGMJzXpA8wDgqGKGFc9RaVfzR1OGU1KQq
         4ALKRJ6Z7yR1gWDw51zO8lB6sGf8NzUkxUAFgwNzDWQsWaB1GnDsiQQbH4gOdRZqBCpc
         tMnG/KWD7SQfvSABODCPzxK6SPb3WmaUDdsrvZnaVIpvzsoOZ0NxPoDRnZqYEMLldxNP
         UVOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=g0D9/rrpIr9fyPZx4h1CXHJNZVxoIHdXAlZrTjtbcgE=;
        b=cnmjXry73aJsGIfPtTNKNTBHIQ3S8zAMv/48H7G/sMfLbZduidtCZ+dFvqeSIL2MAR
         EjookOJccTa1bR3toHYoPEcb2QyOJywNnux56tpsFr8HDQCdQh8FVhVNwpnk/rtbf8VS
         Wf5PAH5yi4u8nYDH/kvzDWXYx/e5FYiGv7euONr2K7OK/Snkr10U1Z5YBki6y2YWO9EO
         yOU72BzIHRPjoNghOijxHzSZSYjl1Yw8E+Tk297Shgx2CBla/o+C6EPa2JwAkRf1b4hV
         cINkqMoBBClShKcL6I8WtKETz3NdU6+eRs/mC+gBALBSl4Y8VqjnTDJueGKcEkLAB81N
         F7Bw==
X-Gm-Message-State: AOAM531mkTKoJ1JBuiaUsmTLe3Mded+nXxlBJ3xj4HNn+XylFjGg+N0Q
        pxrFgYjYlY49pn7xfM6o0HRFE17jUEe6zgpgYWI2Uw==
X-Google-Smtp-Source: ABdhPJx4E1Py+4WI3Q7DjL/bwCfnrfedbmQiFdfgkiPGNuL/KEM2fGFUJZAsGynOOJVh+u1xpGAi1YMZHTLDaNmirAk=
X-Received: by 2002:a7b:ce19:: with SMTP id m25mr4721233wmc.134.1635327764303;
 Wed, 27 Oct 2021 02:42:44 -0700 (PDT)
MIME-Version: 1.0
References: <20211026083138.1818705-1-jens.wiklander@linaro.org>
 <20211026083138.1818705-3-jens.wiklander@linaro.org> <1635271409.203246.2939412.nullmailer@robh.at.kernel.org>
In-Reply-To: <1635271409.203246.2939412.nullmailer@robh.at.kernel.org>
From:   Jens Wiklander <jens.wiklander@linaro.org>
Date:   Wed, 27 Oct 2021 11:42:33 +0200
Message-ID: <CAHUa44GQvN_8Y5jM+TPbnoPeHpz9hybr5i8YPeArGP9Sxk9Z=Q@mail.gmail.com>
Subject: Re: [PATCH v7 2/6] dt-bindings: arm: optee: add interrupt property
To:     Rob Herring <robh@kernel.org>
Cc:     Sumit Garg <sumit.garg@linaro.org>,
        Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Jerome Forissier <jerome@forissier.org>,
        jens.vankeirsbilck@kuleuven.be,
        OP-TEE TrustedFirmware <op-tee@lists.trustedfirmware.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Ard Biesheuvel <ardb@kernel.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Etienne Carriere <etienne.carriere@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 26, 2021 at 8:03 PM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, 26 Oct 2021 10:31:34 +0200, Jens Wiklander wrote:
> > Adds an optional interrupt property to the optee binding.
> >
> > Reviewed-by: Sumit Garg <sumit.garg@linaro.org>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Acked-by: Marc Zyngier <maz@kernel.org>
> > Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
> > ---
> >  .../devicetree/bindings/arm/firmware/linaro,optee-tz.yaml  | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
>
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> Error: Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.example.dts:23.31-32 syntax error
> FATAL ERROR: Unable to parse input tree
> make[1]: *** [scripts/Makefile.lib:385: Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.example.dt.yaml] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:1441: dt_binding_check] Error 2
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.ozlabs.org/patch/1546320
>
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit.
>

Thanks, I'll fix that in the next version.

Cheers,
Jens
