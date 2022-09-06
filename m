Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 959425ADFE4
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 08:36:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232915AbiIFGgD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 02:36:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238420AbiIFGf7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 02:35:59 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8B2F70E6D
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 23:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1662446155; x=1693982155;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=9Y2m5CSmj4PV0WBckXKvLRJMXI3Y+jl1xl/W2i8cKhQ=;
  b=NOpttm2SquLcQSt73hBWqtDXqSfBX2yzhCxT4w5Igfh2ztwGpGIlg07J
   8ZEplBGXzS1tKJD3n2cH7bvkR4ABU3qZl0YtQ7PIqsvkjXt5oSsvtPNbO
   zUHG1oHoafA+tvQuJw9Ev8MwupdnrREn9tFcpuSmiVR2a2+EmRidzu86n
   EU5w1AEb6JHQXJxWZ2A1LPQUmDQ7bQaRyD7lXAlks3FSXvt7gVMgWqPO6
   7D/VL7Q4gsSBHSDd8xPFe+quR+DmdgkJh4zSXtchR8vP9bNK7tEsgwrmA
   kzXgUFF/6kBxVMXNcYp19VIeCWLIZ2isXJXjy/r5ejG5YbzcjgJlFYB1G
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,293,1654552800"; 
   d="scan'208";a="26003201"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 06 Sep 2022 08:35:52 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 06 Sep 2022 08:35:52 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 06 Sep 2022 08:35:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1662446152; x=1693982152;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=9Y2m5CSmj4PV0WBckXKvLRJMXI3Y+jl1xl/W2i8cKhQ=;
  b=ddEBUWzHJ3rSAXqSwKsVW2GfhMSz/7qCRUzQ+LLeKDbG8BIfsA5sd5TJ
   c9CfsjzHT8pMmkyAK/fFv2SWAwTuoVa94L0Ls7G9L/9uWoRFCb9n7UaeH
   0Qxpo4t6xPSa+bDjRJm7CBd5DwGJ+f3dpc4f83wUl9gB1hDAKvtndYRCO
   itqHvBD83QTrwHvIndCnl2wZgkiQl8ZYSnHxy06dI9AicLchMoJ78Paqn
   nV4DpAJYgK7V32Xy7uMUnGAtbDk5iP1pk3t5cdoDxeuN2bZfpjKQGEac/
   qcqVFLby/4bj2mYiUUoAEiRgnusieETfv6mdL25EwpmYyml8/oYYpcnhj
   g==;
X-IronPort-AV: E=Sophos;i="5.93,293,1654552800"; 
   d="scan'208";a="26003199"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Sep 2022 08:35:52 +0200
Received: from steina-w.localnet (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 7CEBB280056;
        Tue,  6 Sep 2022 08:35:51 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx8mp: add missing pinctrl for RTC alarm
Date:   Tue, 06 Sep 2022 08:35:49 +0200
Message-ID: <4771067.31r3eYUQgx@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <CAOMZO5DeSnEDqmy1V5FJoEKZ07i157-1e0WErqJgYT3JiKrfUg@mail.gmail.com>
References: <20220905072553.196974-1-alexander.stein@ew.tq-group.com> <CAOMZO5DeSnEDqmy1V5FJoEKZ07i157-1e0WErqJgYT3JiKrfUg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Fabio,

Am Montag, 5. September 2022, 14:26:42 CEST schrieb Fabio Estevam:
> Hi Alexander,
> 
> On Mon, Sep 5, 2022 at 4:26 AM Alexander Stein
> 
> <alexander.stein@ew.tq-group.com> wrote:
> > Although the RTC is on the module, the RTC_EVENT# signal is connected
> > on the mainboard. Already set by bootloader, but make explicit in Linux
> > as well.
> > 
> > Fixes: 418d1d840e42 ("arm64: dts: freescale: add initial device tree for
> > TQMa8MPQL with i.MX8MP") Signed-off-by: Alexander Stein
> > <alexander.stein@ew.tq-group.com>
> 
> The change looks good, but the Subject should be improved to contain
> the board name:
> 
> arm64: dts: imx8mp-tqma8mpql-mba8mpxl: add missing pinctrl for RTC alarm
> 
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Thank you for your fast feedback. You are right, the board name is missing and 
I'll add it.

Thanks
Alexander



