Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CEB93EBA29
	for <lists+devicetree@lfdr.de>; Fri, 13 Aug 2021 18:33:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235317AbhHMQeX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 12:34:23 -0400
Received: from mail-oi1-f179.google.com ([209.85.167.179]:45048 "EHLO
        mail-oi1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234887AbhHMQeW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Aug 2021 12:34:22 -0400
Received: by mail-oi1-f179.google.com with SMTP id w6so16653256oiv.11
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 09:33:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=rYr5noxVQR/S00Y966BOqxf5d/HW9FsG7+zCyDxoo7E=;
        b=Nj0lYFcb/iUQPJVa8XRTUSFdXNyZK5YgRfpZZCwUYukZBr4sq+UPhIYPLxX98pypm/
         pkhU+zcADRT3bJ0fy0jpaxYABZuCdosR/SOqn94+y842indxiNSxC2IysJxlgXlUc85/
         A1J7eLNX+PQCVWtmsEig3ZHV6JcLQJv4e+I3XU66GZ65kPoVirnZK9tApBXYambj9kut
         VoK/NyCT3CswAz90EitA906oL/ECuhHoJsiYmXskbGM72uOB9kkr/0g8xx5ueXrH1Uhf
         eBuv1GwOIvtTxdR306cyk3xiX4GF4gxnPJAn67vZuy8p+2pQuYtZGjwOj+BwEOYSjg9C
         4teQ==
X-Gm-Message-State: AOAM533Jvt0FQ1WhkLb1uOYUDre+Cl0c5g7SGT/GvGuDcwioaeUhT8Ik
        SZgo6unzdsw+t/eh6fo5VQ==
X-Google-Smtp-Source: ABdhPJwPyJ0K8T/GcWbG3rlPOSMDav+kxD5GOjeg0eBWseKJJr6cpN3SY/pnGAkzTcPILnUknGKntQ==
X-Received: by 2002:a05:6808:105:: with SMTP id b5mr2677427oie.42.1628872435646;
        Fri, 13 Aug 2021 09:33:55 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z3sm338048oot.46.2021.08.13.09.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 09:33:54 -0700 (PDT)
Received: (nullmailer pid 3624043 invoked by uid 1000);
        Fri, 13 Aug 2021 16:33:54 -0000
Date:   Fri, 13 Aug 2021 11:33:54 -0500
From:   Rob Herring <robh@kernel.org>
To:     Matt Johnston <matt@codeconstruct.com.au>
Cc:     devicetree@vger.kernel.org, Wolfram Sang <wsa@kernel.org>,
        Jeremy Kerr <jk@codeconstruct.com.au>
Subject: Re: [RFC PATCH v2 0/2] MCTP I2C devicetree binding
Message-ID: <YRae8tDReDS67sM4@robh.at.kernel.org>
References: <20210811034345.2424442-1-matt@codeconstruct.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210811034345.2424442-1-matt@codeconstruct.com.au>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 11, 2021 at 11:43:43AM +0800, Matt Johnston wrote:
> Hi Rob,
> 
> These patches are a v2 RFC for a devicetree binding of MCTP-over-I2C
> hardware, where MCTP messages are transferred as SMBus block writes.
> 
> Since v1 I've revised the description and commits to hopefully be
> clearer, and renamed the binding to indicate that it's generic for any
> I2C hardware. That should allow for any later device specific drivers -
> please let me know if I'm misunderstanding how it should be changed.

Adding 'generic' is not an improvement nor does it change anything. 
Again, a protocol is not a device. We went thru the same thing with 
HID-over-I2C.

There's still not any diagram to better understand what all this is.

Rob
