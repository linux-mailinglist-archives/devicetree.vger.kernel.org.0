Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E44642F37E5
	for <lists+devicetree@lfdr.de>; Tue, 12 Jan 2021 19:05:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727622AbhALSFI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jan 2021 13:05:08 -0500
Received: from foss.arm.com ([217.140.110.172]:50628 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727160AbhALSFI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 Jan 2021 13:05:08 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC1B81042;
        Tue, 12 Jan 2021 10:04:22 -0800 (PST)
Received: from bogus (unknown [10.57.35.27])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7180E3F66E;
        Tue, 12 Jan 2021 10:04:20 -0800 (PST)
Date:   Tue, 12 Jan 2021 18:04:14 +0000
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Jens Wiklander <jens.wiklander@linaro.org>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>
Subject: Re: [PATCH v3 6/7] firmware: arm_ffa: Setup in-kernel users of FFA
 partitions
Message-ID: <20210112180414.ejcuhdf563hraqzx@bogus>
References: <20201204121137.2966778-1-sudeep.holla@arm.com>
 <20201204121137.2966778-7-sudeep.holla@arm.com>
 <CAHUa44EfHeKgktefhH2nEM7E++Zap8Nw7kaSqVmYVoH01Zm1VQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHUa44EfHeKgktefhH2nEM7E++Zap8Nw7kaSqVmYVoH01Zm1VQ@mail.gmail.com>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

(sorry for late reply)

On Fri, Dec 11, 2020 at 11:45:08AM +0100, Jens Wiklander wrote:
> On Fri, Dec 4, 2020 at 1:11 PM Sudeep Holla <sudeep.holla@arm.com> wrote:

[...]

Agreed on all the comments, so have just removed those context.

> We may need a way to indicate if we're to use the 32bit or 64bit
> calling convention. OP-TEE depends on being able to use 32bit calls
> here.

I assume it would be OP-TEE indicating it would like to use 32-bit.
I am thinking of API from the driver would be like:

int (*32bit_mode_only_set)(struct ffa_device *dev);

Let me know if that works for you. FF-A driver has no other way to evaluate
that and I really don't like that in DT 😉 

--
Regards,
Sudeep
