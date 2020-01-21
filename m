Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 79ECF1442FB
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2020 18:19:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728904AbgAURTO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jan 2020 12:19:14 -0500
Received: from mail-wm1-f65.google.com ([209.85.128.65]:54990 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729165AbgAURTN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jan 2020 12:19:13 -0500
Received: by mail-wm1-f65.google.com with SMTP id b19so3773158wmj.4
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2020 09:19:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=haPd6HRvqtRLXCPbKwJIqyrzbzZjxA8VnTnctWQzHDQ=;
        b=V3RDjf48Ukt0EGvEB2uID5QG+IuQGdlsKsBAVfkHlSYnb1Xv93A92YrzpguYKFALWI
         UwIZfxIyimaFSUW5d1y+/EfTV74zGVbxhVkaqVP5s3Dj/Fp8aGAV14uIUA1uxF1DcH0t
         IKMswMCWnZZAho3mplkrBDA4RWxs+38kvWH7rLKoCuTPmacKNYUmYy8IN5WbvoHEQ4Ne
         vOeM+eEFSyArJLkgVd9mSSrMIDM7q0j/H19ogL07dQcQxb+61IbdnpGi5L5TCbumgBeT
         wVFOsETaP1NSsMRYE1RFOxbzKT+JBGaWUwNML4Qw26nxXiXxeOwzaZCRpHX5g2POwMzA
         Op6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=haPd6HRvqtRLXCPbKwJIqyrzbzZjxA8VnTnctWQzHDQ=;
        b=JCqV4CUPiquHpjOU25eNU4jI2p+TjIhTB07BD5nmJyHCK6Oiri3SzxDxXATfLrzPes
         kAQGFndvJcRaBmVzAX9iHFmMGcXbNeYuFuDt2CjOzrxHtVE7GLvnAG8Kequ5hwMZyy8n
         QystDN/0XdiP4BBsa+LlCAex3XuCgcgjTwM4b/EWrvBgUMjK9tnICiP8HWFzQDx/BRBa
         e2GvqYzk1tSNBp3JxekhxS3aHOY8xZk00yBdIgGJBQfNiJn6ch6wCBEKsZZGksPnvHHO
         fpWzBc/YD4RzYoKflJVrpr//z0z2YDDK3wigYBfimVNITtXw1Xrw4Jm7aj/h7BRGdEWE
         UzbQ==
X-Gm-Message-State: APjAAAWDLRiiphHe8hQOBX96H/nVFTuQg5V6lPgnRnXSMFeVGgF9zuL/
        ERudap3r+6+S01FVfyY+G4o+/g==
X-Google-Smtp-Source: APXvYqybAtRFD3tR6SvMFsaIZbOuse1eNvM1AEYQtBuLj9xMw29hn5KAlx1+3UIYOJMKj8S9Vnb+hw==
X-Received: by 2002:a7b:cd86:: with SMTP id y6mr159546wmj.5.1579627151673;
        Tue, 21 Jan 2020 09:19:11 -0800 (PST)
Received: from cheddar.halon.org.uk (cheddar.halon.org.uk. [93.93.131.118])
        by smtp.gmail.com with ESMTPSA id b16sm55167860wrj.23.2020.01.21.09.19.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 21 Jan 2020 09:19:11 -0800 (PST)
Received: from bsmtp by cheddar.halon.org.uk with local-bsmtp (Exim 4.89)
        (envelope-from <steve.mcintyre@linaro.org>)
        id 1itxBG-0002ib-Nt; Tue, 21 Jan 2020 17:19:10 +0000
Received: from steve by tack.einval.org with local (Exim 4.92)
        (envelope-from <steve.mcintyre@linaro.org>)
        id 1itxAl-0003E3-KQ; Tue, 21 Jan 2020 17:18:39 +0000
Date:   Tue, 21 Jan 2020 17:18:39 +0000
From:   Steve McIntyre <steve.mcintyre@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     David Gibson <david@gibson.dropbear.id.au>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Simon Glass <sjg@chromium.org>, devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Devicetree Compiler <devicetree-compiler@vger.kernel.org>
Subject: Re: [RFC PATCH 1/3] dtc: Add dtb build information option
Message-ID: <20200121171833.GG6796@tack.einval.com>
References: <20200113181625.3130-1-alexandre.torgue@st.com>
 <20200113181625.3130-2-alexandre.torgue@st.com>
 <20200116005741.GB54439@umbus>
 <d2594b79-a45d-dcac-3642-90016a1408b8@st.com>
 <20200117090937.GU54439@umbus>
 <CAL_JsqKTsX9efYDMjGahFDxj0cEfzozeNrY1Nq1bECzgOZGqdQ@mail.gmail.com>
 <20200119063916.GD54439@umbus>
 <CAL_Jsq+-O0cpw9YtVGAjFWstu-=uXVgK0ccgyRj+bjR93gPriw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+-O0cpw9YtVGAjFWstu-=uXVgK0ccgyRj+bjR93gPriw@mail.gmail.com>
X-attached: none
User-Agent: Mutt/1.10.1 (2018-07-13)
X-wibble: sender_address steve.mcintyre@linaro.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 21, 2020 at 09:59:44AM -0600, Rob Herring wrote:
>On Sun, Jan 19, 2020 at 12:41 AM David Gibson
><david@gibson.dropbear.id.au> wrote:
>>
>> It's not really about who consumes it.  It's about defining a
>> namespace for the new property to exist in, since it's not part of a
>> relevant standard (if we wanted to make it such, we should pin down
>> what goes in there with much more precision).
>
>I can't think of any cases of the 'linux' prefix not being about who
>consumes it. And we often end up dropping 'linux' because it turns out
>to not be Linux specific. I don't care to see u-boot,build-info,
>freebsd,build-info, etc. when a given dtb can only have 1 of those.

Yes, exactly. What would happen if somebody (tried to) fill in more
than one of XXXX.build-info? It makes no sense.

>My intent is this property name is added to the DT spec, but I don't
>agree we should define what's in it beyond a string. It is information
>that is useful for humans identifying what the dtb was built from.

Nod - defining this as a free-form string lets people put their own
information in, without us having to try and agree on a full spec
which we'll need to update as ideas change.

-- 
Steve McIntyre                                steve.mcintyre@linaro.org
<http://www.linaro.org/> Linaro.org | Open source software for ARM SoCs

