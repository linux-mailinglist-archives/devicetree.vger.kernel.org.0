Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C286811D740
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2019 20:38:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730582AbfLLTim (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Dec 2019 14:38:42 -0500
Received: from mail-pg1-f196.google.com ([209.85.215.196]:39653 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730512AbfLLTim (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Dec 2019 14:38:42 -0500
Received: by mail-pg1-f196.google.com with SMTP id b137so45265pga.6
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2019 11:38:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=nO1Xvte7AHlIbFQy+ePVzlUeHQ3CsGcG48YlqFHOTlw=;
        b=sL9QHEKUW7AQpOsREX++fq+CABCPzEVaWhNpvN+2nVXu97o+mwotR0gpjkBNB0WDCc
         BoZLZld9YORyrUkh1GWkJoK4M+o50hULQuYMjuSvr7+WHJy3Q76DF0xyzyJjzow+gI81
         CS/44yThSAuTvgNo+qTEf/JNSns4UqYQJP4hYjOWLmA1EOmlTEfDmsAtCfFZD8k5pqsW
         H+gDh1HVb8dee7euqzphzNu16t4IJufA/2nWid3ePpjh7Nym6pDnbXge6dutrXncdvrv
         1CwP9xRoj9eLlFP0YOOs2oWye36ZnrTAv58m6A1CwE31VsIOMI+TxUZ9lpf+5QoHJvdj
         tFtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=nO1Xvte7AHlIbFQy+ePVzlUeHQ3CsGcG48YlqFHOTlw=;
        b=RA5zAlz8Q5QfREOYxImZpiEY+bMXfMLOiSbTgFBve9g1ezhq0qfuHN+bmbi6XI+Yat
         mMRJRPgfFIVFTvPeOb87iBWtCa0udpp/fqcYH+FKUuKQ+jnplosDl8F7EfV61KXIdDWL
         LY3UHybEXZdtPS8tKu9z2ZkuEHSzGA38yoea2UUNzsIyH9rdErz/odnpr0/8RerWYI+i
         8PTn/LVaZoGRmlHnkkZqqH+Ckxg4NrvJATAh8SiaIGIL7ZRo/Q/tNeUHNlC255xvZODD
         OIZi5ulwm3AAcfWBoULkwC3zDOzoaHFbTLN26qUG+s6rI17hpC1BPmanS7JeoXgZmE9M
         yRfg==
X-Gm-Message-State: APjAAAW1MYd6ft5qHrdBM+pXPPZGBJv/mSDbkqkOt+9zzPwcsqxFp/X6
        lwK6pmVRqt8VUk7bGKRNc69q3hDrrDyuHA==
X-Google-Smtp-Source: APXvYqzLzdjr2HqsdVrX5PuBO0uJYGQpjtYnz8xrey+lYpgLwL0QgLIlxLijTHUj4J1SIZPlrthuyA==
X-Received: by 2002:a63:cc4f:: with SMTP id q15mr12527612pgi.159.1576179521721;
        Thu, 12 Dec 2019 11:38:41 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id x7sm3542837pfp.93.2019.12.12.11.38.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Dec 2019 11:38:41 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Guillaume La Roque <glaroque@baylibre.com>,
        narmstrong@baylibre.com, mchehab@kernel.org,
        hverkuil-cisco@xs4all.nl, devicetree@vger.kernel.org
Cc:     linux-media@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] Add support of CEC wakeup on Amlogic G12 and SM1 SoCs
In-Reply-To: <20191212145925.32123-1-glaroque@baylibre.com>
References: <20191212145925.32123-1-glaroque@baylibre.com>
Date:   Thu, 12 Dec 2019 11:38:40 -0800
Message-ID: <7hpngtjpvj.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Guillaume La Roque <glaroque@baylibre.com> writes:

> this patchset add support of CEC wakeup.
> We need to set logical address and activate some options in registers before going in suspend.
> Registers address and options values come from amlogic driver.

Tested-by: Kevin Hilman <khilman@baylibre.com>

