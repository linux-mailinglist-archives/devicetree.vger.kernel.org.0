Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 939133FD945
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 14:10:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243961AbhIAMLh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 08:11:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243892AbhIAMLg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 08:11:36 -0400
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com [IPv6:2607:f8b0:4864:20::f36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E766AC061760
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 05:10:39 -0700 (PDT)
Received: by mail-qv1-xf36.google.com with SMTP id 4so1283484qvp.3
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 05:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=E6mpPb7f1F5lRhxBylDSrTxeNwkSOwBfhFK+8t8tMzw=;
        b=BHE1z2l1fRN7EaJh7wRMCoKvitxbmB5ICi1ZNqQc7um4oCx7DlDTvNyfopK5hpzqaO
         kr4m9UCAC7EBe0KV5fxUY4t64yS6gZeqqiUtYbMe2aP8WcOMVCN/eHfKOaKjsWvduy21
         pqnnlGzao3sUSPumfpjlX4FC/ERhiUvjYaeYo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=E6mpPb7f1F5lRhxBylDSrTxeNwkSOwBfhFK+8t8tMzw=;
        b=bIw12IMLh6AqUZkBlho48XJy/5LTSbzyQBzR0yC5Du8lcyCnE2J63LUXE2cigznxjI
         GsNx3U5vci8Ez8mLLBLA8dp0asHn7U+bPib6T5p8eMhnp2pnU7tl6mBS5qk+9UXc7yXA
         5RC0uM6T8pCjtXnLQxYIzXTytmIsM5E4aR30/MqNz0YZjgkwpGHywme2jvGYnbgnDF9u
         5QuR5viPEylXfBcRY+sI02/V8kKsX/nJ9a3CQAsnL3+ZOsAoqHhfBLqMhQ2dDiXzUncS
         e99CSB+N2of44+PCzuRzykEg5YmcMOH5qmhmI+PONO55aUniXVil6CV5jQJd1MR9wfG3
         voFg==
X-Gm-Message-State: AOAM533p07igvg3l/nWMszpSfwuJo6v3LWcCKCK/039Ub86mPJ/v8ur+
        TjL9Oypeq4aHGIaeqTgeRkfItw==
X-Google-Smtp-Source: ABdhPJxZzPG7g1NG+QtKrYFzSmQZsRjmjAd2zx8sxBisMRLQ3u5vqpMgQtbaJ3qi9PG3ud+ZNyREvw==
X-Received: by 2002:a05:6214:23c6:: with SMTP id hr6mr33866970qvb.22.1630498239096;
        Wed, 01 Sep 2021 05:10:39 -0700 (PDT)
Received: from bill-the-cat (2603-6081-7b01-cbda-c0de-1187-e67f-31d5.res6.spectrum.com. [2603:6081:7b01:cbda:c0de:1187:e67f:31d5])
        by smtp.gmail.com with ESMTPSA id b7sm10466668qtt.12.2021.09.01.05.10.38
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 Sep 2021 05:10:38 -0700 (PDT)
Date:   Wed, 1 Sep 2021 08:10:36 -0400
From:   Tom Rini <trini@konsulko.com>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Mailing List <devicetree-spec@vger.kernel.org>
Subject: Re: [PATCH v2 05/52] dt-bindings: Convert Reserved Memory binding to
 a schema
Message-ID: <20210901121036.GY858@bill-the-cat>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-6-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901091852.479202-6-maxime@cerno.tech>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 01, 2021 at 11:18:05AM +0200, Maxime Ripard wrote:

> The Reserved Memory mechanism is supported by Linux thanks to its device
> tree binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: Mailing List <devicetree-spec@vger.kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Minor request.  As device tree bindings are used and valid and
applicable outside of Linux, it shouldn't be mentioned in the commit
message either.  This binding is just as valid for U-Boot, FreeBSD, etc
as it is for Linux :)  Thanks!

-- 
Tom
