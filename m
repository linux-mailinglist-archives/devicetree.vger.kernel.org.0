Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D625A29E480
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 08:40:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729237AbgJ2HjM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 03:39:12 -0400
Received: from muru.com ([72.249.23.125]:47112 "EHLO muru.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726882AbgJ2Hi4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 29 Oct 2020 03:38:56 -0400
Received: from atomide.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id E8EE580C0;
        Thu, 29 Oct 2020 06:19:32 +0000 (UTC)
Date:   Thu, 29 Oct 2020 08:19:24 +0200
From:   Tony Lindgren <tony@atomide.com>
To:     Carl Philipp Klemm <philipp@uvos.xyz>
Cc:     robh+dt@kernel.org, linux-omap@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2]  ARM: dts: xt875: Improve dts support for Motorola
 XT875
Message-ID: <20201029061924.GH5639@atomide.com>
References: <20201023180902.45afa3cad97a11e563ff8110@uvos.xyz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201023180902.45afa3cad97a11e563ff8110@uvos.xyz>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Carl Philipp Klemm <philipp@uvos.xyz> [201023 19:24]:
> Add section and support for kionix kxtf9 on XT875

Applying forv 5.11 thanks. I changed the subject to match
the line above to avoid commits with duplicate subjet as
the previous patch also had the same subject.

Regards,

Tony
