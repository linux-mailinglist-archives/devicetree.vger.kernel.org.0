Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E998733D5D9
	for <lists+devicetree@lfdr.de>; Tue, 16 Mar 2021 15:35:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236611AbhCPOf1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Mar 2021 10:35:27 -0400
Received: from foss.arm.com ([217.140.110.172]:43752 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235436AbhCPOe5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Mar 2021 10:34:57 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CB01BD6E;
        Tue, 16 Mar 2021 07:34:56 -0700 (PDT)
Received: from bogus (unknown [10.163.66.95])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9B9DB3F792;
        Tue, 16 Mar 2021 07:34:53 -0700 (PDT)
Date:   Tue, 16 Mar 2021 14:34:41 +0000
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Jens Wiklander <jens.wiklander@linaro.org>
Cc:     Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Subject: Re: [PATCH v4 0/7] firmware: Add initial support for Arm FF-A
Message-ID: <20210316143429.tdyyulkml4ypdixy@bogus>
References: <20210212154614.38604-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210212154614.38604-1-sudeep.holla@arm.com>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jens,

On Fri, Feb 12, 2021 at 03:46:07PM +0000, Sudeep Holla wrote:
> Hi all,
>
> This is very basic implementation for in-kernel support for Arm FF-A
> specification.
>
> Arm Firmware Framework for Armv8-A specification[1] describes a software
> architecture that provides mechanism to utilise the virtualization
> extension to isolate software images and describes interfaces that
> standardize communication between the various software images. This
> includes communication between images in the Secure and Normal world.
>
> The main idea here is to create FFA device to establish any communication
> with a secure partition. This is currently tested with OPTEE(with changes
> to OPTEE driver adding FFA as transport)
>

Since you reviewed the last version, it would be helpful if you provide
Reviewed-by or Tested-by if you happy with this version. I would like to
get this initial version merged for v5.13

--
Regards,
Sudeep
