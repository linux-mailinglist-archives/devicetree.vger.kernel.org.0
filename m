Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 860CC3E53FE
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 08:59:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236399AbhHJHAI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 03:00:08 -0400
Received: from muru.com ([72.249.23.125]:40564 "EHLO muru.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234999AbhHJHAI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Aug 2021 03:00:08 -0400
Received: from localhost (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id 7BD1E80CF;
        Tue, 10 Aug 2021 07:00:04 +0000 (UTC)
Date:   Tue, 10 Aug 2021 09:59:42 +0300
From:   Tony Lindgren <tony@atomide.com>
To:     Paul Barker <paul.barker@sancloud.com>
Cc:     =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
        linux-omap@vger.kernel.org,
        Robert Nelson <robertcnelson@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM: dts: am335x-sancloud-bbe: Fix missing pinctrl
 refs
Message-ID: <YRIj3qaCuiMRZ4m7@atomide.com>
References: <20210806085907.14615-1-paul.barker@sancloud.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210806085907.14615-1-paul.barker@sancloud.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Paul Barker <paul.barker@sancloud.com> [210806 11:59]:
> pinctrl settings for the USB hub, barometer & accelerometer need to be
> referenced from the relevant nodes to work.

Thanks applying both into omap-for-v5.15/dt.

Tony
