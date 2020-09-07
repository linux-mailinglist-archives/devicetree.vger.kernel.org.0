Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEA4125F9AE
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 13:41:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729063AbgIGLko (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 07:40:44 -0400
Received: from foss.arm.com ([217.140.110.172]:33596 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728988AbgIGLkI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Sep 2020 07:40:08 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 88D4F1045;
        Mon,  7 Sep 2020 04:40:07 -0700 (PDT)
Received: from bogus (unknown [10.57.10.112])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 35AE13F66E;
        Mon,  7 Sep 2020 04:40:06 -0700 (PDT)
Date:   Mon, 7 Sep 2020 12:40:03 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Will Deacon <will@kernel.org>, pratikp@quicinc.com,
        tsoni@quicinc.com, kernel-team@android.com
Subject: Re: [PATCH 1/9] dt-bindings: Arm: Add Firmware Framework for Armv8-A
 (FF-A) binding
Message-ID: <20200907114003.GD17330@bogus>
References: <20200829170923.29949-1-sudeep.holla@arm.com>
 <20200829170923.29949-2-sudeep.holla@arm.com>
 <20200901170354.0000309a@Huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200901170354.0000309a@Huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 01, 2020 at 05:03:54PM +0100, Jonathan Cameron wrote:
> On Sat, 29 Aug 2020 18:09:15 +0100
> Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> > From: Will Deacon <will@kernel.org>
> >
> > Add devicetree bindings for a FF-A-compliant hypervisor, its partitions
> > and their memory regions. The naming is ludicrous but also not by fault.
> >
> > Signed-off-by: Will Deacon <will@kernel.org>
> > (sudeep.holla: Dropped PSA from name and elsewhere as it seem to have
> >  disappeared mysteriously just before the final release)
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
>
> As I was reading this out of curiosity...
>

Thanks for the review, all comments taken and incorporated in all other
patches. I will look at this yaml in detail soon.

--
Regards,
Sudeep
