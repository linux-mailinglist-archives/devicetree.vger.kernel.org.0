Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21A76710A12
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 12:30:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240907AbjEYKaO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 06:30:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240004AbjEYKaL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 06:30:11 -0400
Received: from fgw22-7.mail.saunalahti.fi (fgw22-7.mail.saunalahti.fi [62.142.5.83])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16D9D139
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 03:30:10 -0700 (PDT)
Received: from localhost (88-113-26-95.elisa-laajakaista.fi [88.113.26.95])
        by fgw22.mail.saunalahti.fi (Halon) with ESMTP
        id 1e35e9cc-fae7-11ed-a9de-005056bdf889;
        Thu, 25 May 2023 13:30:07 +0300 (EEST)
From:   andy.shevchenko@gmail.com
Date:   Thu, 25 May 2023 13:30:06 +0300
To:     Hugo Villeneuve <hugo@hugovil.com>
Cc:     gregkh@linuxfoundation.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        jirislaby@kernel.org, jringle@gridpoint.com,
        tomasz.mon@camlingroup.com, l.perczak@camlintechnologies.com,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Hugo Villeneuve <hvilleneuve@dimonoff.com>
Subject: Re: [PATCH v3 04/11] serial: sc16is7xx: add post reset delay
Message-ID: <ZG84rnwh3XTdY-iy@surfacebook>
References: <20230525040324.3773741-1-hugo@hugovil.com>
 <20230525040324.3773741-5-hugo@hugovil.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230525040324.3773741-5-hugo@hugovil.com>
X-Spam-Status: No, score=0.7 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
        FORGED_GMAIL_RCVD,FREEMAIL_FROM,NML_ADSP_CUSTOM_MED,SPF_HELO_NONE,
        SPF_SOFTFAIL,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thu, May 25, 2023 at 12:03:17AM -0400, Hugo Villeneuve kirjoitti:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
> Make sure we wait at least 3us before initiating communication with
> the device after reset.

...

> +	usleep_range(3, 5);

I would put (5, 10) instead to relax a bit the scheduler.

-- 
With Best Regards,
Andy Shevchenko


