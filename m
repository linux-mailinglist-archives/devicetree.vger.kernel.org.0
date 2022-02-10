Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91A1F4B0257
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 02:31:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232721AbiBJBbd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 20:31:33 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:37766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232667AbiBJBbL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 20:31:11 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB2D722531
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 17:31:12 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id i186so7604132pfe.0
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 17:31:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=JNuH55wTGRw2CNKCDmZpYRQ9FVq8mQbAJA/99Xvogog=;
        b=JGXX4ykemXQNdoTLEmz0NjLVOPq9hzvUeU/SBBNHvgfOoFfHFc+2JBBtgYlb7ih2AS
         4MxIlGUzOmnpldQOxuuouEQV+inZjrhMPm+YefMjebVbO/PY3af/iTvmMncFcZuOFISu
         FFa+lu4cPaKNs2fi1PSTSDYSYrdm1lrFYDct028sneLCxdWMIfE7kAbEgFWpT5AEgozl
         pUQCwY93U2MpLvHdWRj2aPQXvvtkquNep2RlBKFeZ1DzwQ0flb5w1lAYxHLwUay1Kaeo
         rz7lqe+ip3zF8wlv5YskSHt21q070KJfLHKsI+uEzYZ5Pfeaa946MbWyVvpkbcwPj0Lh
         9UUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=JNuH55wTGRw2CNKCDmZpYRQ9FVq8mQbAJA/99Xvogog=;
        b=wGA3wyhFCBlheanc75voSsDZVItMJN11VWfA7lh2NcbQ3HvXedHGPp9ArnxmTbzZlF
         kGVagfbg46nfNDHuaBH52ddrsK9B4QPqkXIXjJBTIBF1pv/kcQ3lV6i49QD6PQkYYjjt
         490UeU+9dnAh8MaT0XEeoAZ27DND/5OSZ74QJc6HfzcJdscbvDs6jOQlDPnaGpCTXSmF
         q6EW8t7zS+/Ioldt2cxvoGMbg4Gm46fSNH3QqFLRRaPIFQE6qscOmP51IyZypttHgLG/
         3Z8sG/VRHfsdGIQiqr4B9HqyVXxTk1yLqXM00aPRmWwk1zuYToGMrMBNHW3xk/rZutFx
         BFeg==
X-Gm-Message-State: AOAM5308lGHGJrgHY6vwbEt30lOdpFqkaWZDipgoFk+eVo2W0+ZKXJoU
        z+saN9lV9GdS435TaYDc9wHhYQ==
X-Google-Smtp-Source: ABdhPJz8Wt+8lcJKZREuw8154zIwS0J+JbpHaY9co37OSVxEQFfth+/1EIUNNtqtIRoSxcqsPjQ3uA==
X-Received: by 2002:a05:6a00:1a52:: with SMTP id h18mr5152362pfv.72.1644456672247;
        Wed, 09 Feb 2022 17:31:12 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id lr8sm58982pjb.11.2022.02.09.17.31.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Feb 2022 17:31:11 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH] arm64: dts: meson: remove CPU opps below 1GHz for G12B/SM1
In-Reply-To: <20220209135535.29547-1-christianshewitt@gmail.com>
References: <20220209135535.29547-1-christianshewitt@gmail.com>
Date:   Wed, 09 Feb 2022 17:31:11 -0800
Message-ID: <7h7da3o6cg.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> Amlogic G12B and SM1 devices experience CPU stalls and random board
> wedges when the system idles and CPU cores clock down to lower opp
> points. Recent vendor kernels include a change to remove 100-250MHz
> (with no explanation) [0] but other downstream sources also remove
> the 500/667MHz points (also with no explanation). Unless 100-667Mhz
> opps are removed or the CPU governor forced to performance, stalls
> are observed, so let's remove them an improve stability/uptime.

Just curious: what CPUfreq governor do you use by default for the
LibreELEC kernel?

Your patch greatly improves the stability I'm seeing, but doesn't quite
elimitate it.

I'm testing suspend/resume in a loop on VIM3, and with schedutil
(default) or ondemand, it eventually hangs.  With either powersave or
performance it's stable.  

Kevin
