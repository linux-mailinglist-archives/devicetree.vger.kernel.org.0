Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B330474B70
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 20:03:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234436AbhLNTDF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 14:03:05 -0500
Received: from foss.arm.com ([217.140.110.172]:35514 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234429AbhLNTDE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Dec 2021 14:03:04 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 718026D;
        Tue, 14 Dec 2021 11:03:04 -0800 (PST)
Received: from [10.57.34.58] (unknown [10.57.34.58])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C93983F5A1;
        Tue, 14 Dec 2021 11:03:02 -0800 (PST)
Message-ID: <7cbd2e35-89c8-50e4-22de-a6c2277cac3e@arm.com>
Date:   Tue, 14 Dec 2021 19:02:57 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH v2 0/5] arm64: PMU updates
Content-Language: en-GB
To:     Will Deacon <will@kernel.org>, robh+dt@kernel.org,
        mark.rutland@arm.com
Cc:     catalin.marinas@arm.com, kernel-team@android.com,
        suzuki.poulose@arm.com, devicetree@vger.kernel.org,
        thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org
References: <cover.1639490264.git.robin.murphy@arm.com>
 <163950511279.725168.3379356222366423286.b4-ty@kernel.org>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <163950511279.725168.3379356222366423286.b4-ty@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-12-14 18:33, Will Deacon wrote:
> On Tue, 14 Dec 2021 14:16:12 +0000, Robin Murphy wrote:
>> Here's v2, with the DSU binding actually finished (oh the shame...) and
>> the NVIDIA PMU patch pulled in to benefit from the cleanup and keep
>> things manageably together. The initial binding patch from v1 is no
>> longer included since Rob has picked it up separately.
>>
>> Refactoring arm_pmu's probing to be more modular turns out to be a
>> substantial yak to shave, so in the end I decided it *is* worth
>> implementing Mark's macro suggestion now - after all, it can simply be
>> converted from a function template to a structure template as and when
>> the time comes.
>>
>> [...]
> 
> Applied first three to will (for-next/perf-cpu), thanks!
> 
> [1/5] arm64: perf: Support Denver and Carmel PMUs
>        https://git.kernel.org/will/c/d4c4844a9b47
> [2/5] arm64: perf: Simplify registration boilerplate
>        https://git.kernel.org/will/c/6ac9f30bd43b
> [3/5] arm64: perf: Support new DT compatibles
>        https://git.kernel.org/will/c/893c34b60a59

Thanks Will! Just to clarify, are you leaving the DSU binding patches 
for Rob to pick up, or waiting for the typo to get fixed? (and if the 
former - Rob, would you like me to resend a v3 with the typo fixed?)

Cheers,
Robin.
