Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 967D638B01C
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 15:34:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231748AbhETNgT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 09:36:19 -0400
Received: from foss.arm.com ([217.140.110.172]:51538 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231634AbhETNgT (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 20 May 2021 09:36:19 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AC4F611D4;
        Thu, 20 May 2021 06:34:57 -0700 (PDT)
Received: from bogus (unknown [10.57.72.88])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C84A63F73B;
        Thu, 20 May 2021 06:34:55 -0700 (PDT)
Date:   Thu, 20 May 2021 14:34:48 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Jens Wiklander <jens.wiklander@linaro.org>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>, arve@google.com,
        Sudeep Holla <sudeep.holla@arm.com>,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Subject: Re: [PATCH v6 0/6] firmware: Add initial support for Arm FF-A
Message-ID: <20210520133448.GA919377@bogus>
References: <20210505093843.3308691-1-sudeep.holla@arm.com>
 <CAHUa44Fk_u9tFp=C6FdUhYeSZ-wAcmAaEqx9j=eJXtxD10G=Ug@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHUa44Fk_u9tFp=C6FdUhYeSZ-wAcmAaEqx9j=eJXtxD10G=Ug@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 20, 2021 at 03:20:46PM +0200, Jens Wiklander wrote:
> On Wed, May 5, 2021 at 11:38 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > Hi all,
> >
> > This is very basic implementation for in-kernel support for Arm FF-A
> > specification.
> >
> > Arm Firmware Framework for Armv8-A specification[1] describes a software
> > architecture that provides mechanism to utilise the virtualization
> > extension to isolate software images and describes interfaces that
> > standardize communication between the various software images. This
> > includes communication between images in the Secure and Normal world.
> >
> > The main idea here is to create FFA device to establish any communication
> > with a secure partition. This is currently tested with OPTEE(with changes
> > to OPTEE driver adding FFA as transport)
> >
> > The series can be fetched from [2]
> >
> > --
> > Regards,
> > Sudeep
> >
> > [1] https://developer.arm.com/documentation/den0077/latest
> > [2] git://git.kerniel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git v5.13/ffa
> 
> Tested OK with my OP-TEE driver patches on top of 755e78187c4e
> ("firmware: arm_ffa: Add support for MEM_* interfaces"), which is the
> latest on the v5.13/ffa branch above.
> 
> Tested-by: Jens Wiklander <jens.wiklander@linaro.org>
> 

Thanks Jens for testing, much appreciated!

-- 
Regards,
Sudeep
