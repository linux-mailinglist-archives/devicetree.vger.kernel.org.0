Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3AE03956C3
	for <lists+devicetree@lfdr.de>; Mon, 31 May 2021 10:17:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229640AbhEaITP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 May 2021 04:19:15 -0400
Received: from foss.arm.com ([217.140.110.172]:50838 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230320AbhEaITO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 May 2021 04:19:14 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 761C46D;
        Mon, 31 May 2021 01:17:35 -0700 (PDT)
Received: from bogus (unknown [10.57.72.241])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B6B513F73D;
        Mon, 31 May 2021 01:17:34 -0700 (PDT)
Date:   Mon, 31 May 2021 09:17:30 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Cristian Marussi <cristian.marussi@arm.com>,
        devicetree@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 6/8] dt-bindings: mailbox : arm, mhu: Fix arm, scpi
 example used here
Message-ID: <20210531081730.jckoxxntct3qmymq@bogus>
References: <20210526182807.548118-1-sudeep.holla@arm.com>
 <20210526182807.548118-7-sudeep.holla@arm.com>
 <1622125407.781075.731789.nullmailer@robh.at.kernel.org>
 <20210527162503.4w7sch36ov6ew4mo@bogus>
 <CAL_JsqJw7VoJaGZp_u56k1B3+tbpOimnmhY-4mL7axPyXDTs2A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqJw7VoJaGZp_u56k1B3+tbpOimnmhY-4mL7axPyXDTs2A@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 27, 2021 at 03:07:39PM -0500, Rob Herring wrote:
> On Thu, May 27, 2021 at 11:25 AM Sudeep Holla <sudeep.holla@arm.com> wrote:

[...]

> > Just curious if this is built as past of the series as I am unable to hit
> > this issue. However I get this if I remove 5/8 which is adding the scpi
> > yaml schema. Am I missing something ?
>
> The automated check does try to apply series, but runs checks a patch
> at time and it resets the base if it gets an error on a patch. I think
> switching patch 5 and 6 order should fix things. Don't worry about
> that yet, I'll look at the rest of the series.
>

Ah OK, will re-order them. Thanks for the review.

--
Regards,
Sudeep
