Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86EEC473645
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 21:48:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242519AbhLMUsv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 15:48:51 -0500
Received: from mail-oi1-f175.google.com ([209.85.167.175]:43542 "EHLO
        mail-oi1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236136AbhLMUsv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 15:48:51 -0500
Received: by mail-oi1-f175.google.com with SMTP id o4so24785406oia.10
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 12:48:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zXVQYE/7WpF6MTU0bUzvJRZ4UiE6Up5q9US/0VFdR7E=;
        b=AWev3c6mjQTNRFebPKwHQLslJqTwQpJV0QyLnOLZhtM2Sx/i6tfzOE4dZ/8iueJ2Tx
         plsCtAJqzhSX5dhmL+RCjYS68TdAEocWX1mq6BHfRRrPeqiG8qke2VQKJVGoNOKGCZWz
         k/AFa9/sC4EVjz5C6aMiULbRTTa3QHnhI3CW6X108qad9/gQX+gs+bQhyW44UM4xxtsN
         bY3qSZfLQXxXCNYFBCG3T04ey0wPnUyQlP1odx4NNDECaaHqf+ROr5gdWjdkXB6EqvnV
         WnNgRl6D91Ymkj7F7HNbfm/LzTtVKJaUtJ0ySW7OVuMVBTT3QjaGgFLgzKU5RiolVOlE
         ahhA==
X-Gm-Message-State: AOAM5308bj6zIZl669SKhm2WeLOsw4Dy4kqx7XDuE8s0UKyvZESaqoz7
        Yt6pDCykR4jpZL2HeUmQCg==
X-Google-Smtp-Source: ABdhPJy+iKvMFeMfUFlXlXkUeRZAnNy9TIH/r5x/58bAPTixTGi4iOREjQO1xwJrbfAtBVw2npWVaw==
X-Received: by 2002:a05:6808:11c1:: with SMTP id p1mr31091309oiv.113.1639428530592;
        Mon, 13 Dec 2021 12:48:50 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id u136sm2807537oie.13.2021.12.13.12.48.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 12:48:49 -0800 (PST)
Received: (nullmailer pid 1546478 invoked by uid 1000);
        Mon, 13 Dec 2021 20:48:48 -0000
Date:   Mon, 13 Dec 2021 14:48:48 -0600
From:   Rob Herring <robh@kernel.org>
To:     Dinh Nguyen <dinh.linux@gmail.com>
Cc:     Pratyush Yadav <p.yadav@ti.com>, Dinh Nguyen <dinguyen@kernel.org>,
        devicetree@vger.kernel.org, broonie@kernel.org
Subject: Re: [PATCHv2 1/3] dt-bindings: spi: cadence-quadspi: document
 "cdns,qspi-nor-ver-00-10"
Message-ID: <YbexsGzz0/tuwjwq@robh.at.kernel.org>
References: <20211203181714.3138611-1-dinguyen@kernel.org>
 <20211206102242.e2ql7kcgzivh75v4@ti.com>
 <CADhT+wfrtqO6dDSUbq-eeyRodzigA7Gsce0xgK6mzLo0ujb5AQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CADhT+wfrtqO6dDSUbq-eeyRodzigA7Gsce0xgK6mzLo0ujb5AQ@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 08, 2021 at 05:45:31PM -0600, Dinh Nguyen wrote:
> On Mon, Dec 6, 2021 at 9:51 PM Pratyush Yadav <p.yadav@ti.com> wrote:
> >
> > On 03/12/21 12:17PM, Dinh Nguyen wrote:
> > > The QSPI controller on Intel's SoCFPGA platform does not implement the
> > > CQSPI_REG_WR_COMPLETION_CTRL register, thus a write to this register
> > > results in a crash.
> > >
> > > The module/revision ID is written in the MODULE_ID register. For this
> > > variance, bits 23-8 is 0x0010.
> >
> > When I looked at your original patches I was under the impression that
> > this was a SoCFPGA specific thing and did not apply to other
> > implementation of the IP in general.
> >
> > If this is indeed a generic thing and we can detect it via the MODULE_ID
> > register [0], then why not just read that register at probe time and
> > apply this quirk based on the ID? Why then do we need a separate
> > compatible at all?
> >
> > [0] I would like to see it stated explicitly somewhere that version
> > 0x0010 does not support the WR_COMPLETION_CTRL register.
> >
> 
> I cannot for sure confirm that this condition applies to only 0x0010
> version of the
> IP. I can verify that the IP that is in all 3 generations of SoCFPGA
> devices, all have
> MODULE_ID value of 0x0010 and all do not have the WR_COMPLETION_CTRL
> register implemented.

Then for the same reason, you shouldn't be trying to have a 'generic' 
compatible.

> 
> I'm almost certain this feature is not SoCFPGA specific, but
> since I only had SoCFPGA hardware, that was my initial patch. I made the mistake
> of not CC'ing the devicetree maintainers until I sent the DTS binding
> patch change,
> and he rightly suggested making the binding something more generic.

That is completely the opposite of what I said. You had something 
genericish to Intel platforms. You should make the compatible(s) SoC 
specific.


> I do like your idea of making a determination in the driver without
> being dependent
> on a dts binding. I'd like to know the impetus behind your original
> patch of removing the
> dependency of "if (f_pdata->dtr)"  for the write to the WR_COMPLETION_CTRL
> register? Perhaps there's some other common property that we can key
> off for why the register
> is not implemented?
> 
> Dinh
> 
