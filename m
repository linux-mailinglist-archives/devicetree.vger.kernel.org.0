Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CE036CFADC
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2019 15:03:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730683AbfJHNDP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Oct 2019 09:03:15 -0400
Received: from 5.mo68.mail-out.ovh.net ([46.105.62.179]:38119 "EHLO
        5.mo68.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730872AbfJHNDO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Oct 2019 09:03:14 -0400
X-Greylist: delayed 4199 seconds by postgrey-1.27 at vger.kernel.org; Tue, 08 Oct 2019 09:03:13 EDT
Received: from player779.ha.ovh.net (unknown [10.109.160.76])
        by mo68.mail-out.ovh.net (Postfix) with ESMTP id 0A5A3142FDD
        for <devicetree@vger.kernel.org>; Tue,  8 Oct 2019 13:44:38 +0200 (CEST)
Received: from etezian.org (85-76-98-218-nat.elisa-mobile.fi [85.76.98.218])
        (Authenticated sender: andi@etezian.org)
        by player779.ha.ovh.net (Postfix) with ESMTPSA id 46727A99DC68;
        Tue,  8 Oct 2019 11:44:27 +0000 (UTC)
Date:   Tue, 8 Oct 2019 14:44:26 +0300
From:   Andi Shyti <andi@etezian.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Andi Shyti <andi@etezian.org>,
        Andi Shyti <andi.shyti@samsung.com>,
        Simon Shields <simon@lineageos.org>,
        linux-input@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] Input: mms114 - use device_get_match_data
Message-ID: <20191008114426.GC4015@jack.zhora.eu>
References: <20191007203343.101466-1-stephan@gerhold.net>
 <20191007203343.101466-2-stephan@gerhold.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191007203343.101466-2-stephan@gerhold.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Ovh-Tracer-Id: 8549520944366338797
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrheelgdeghecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stephan,

> device_get_match_data is available now, so we can replace the call
> to of_device_get_match_data and remove the FIXME comment.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Andi Shyti <andi@etezian.org>

Thanks,
Andi
