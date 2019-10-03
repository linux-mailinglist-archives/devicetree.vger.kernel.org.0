Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AAD31CAD86
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2019 19:48:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731605AbfJCRoA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Oct 2019 13:44:00 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:41995 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730508AbfJCRoA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Oct 2019 13:44:00 -0400
Received: by mail-pf1-f193.google.com with SMTP id q12so2200906pff.9
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2019 10:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=wgtFkL/FFRFrlD7W9UDHQPj6n9N+/Wo8Jj+YzpO0YxI=;
        b=XUFGIGD09TqEqmkFIqlIZjHwCq9P4g6INXCLyMVZlHNV2VUniAmRCDbm/DbO9MxJ/f
         Zz/bwzmkRc+zW9SB0447I2PEhwobtbUQljlruZs7iTfvwGn9G0XLOJCQHq9PtHqLjzQV
         LiYGvocI4OuJKqOmXEJRNnd1SSCB9WRHEG/+RTmytroyvvq0d1PB47xtO+mku1c6NtXs
         6UxLj3dEpJH74J9al6AcBlchVPJl8vzA6hoLwRR1GNycQWp6rokCBTZz6l0QKpF4W2r0
         bIQe5SvvpEP2dBxQzb1s/NlLLZ3Tpfe0WZi7YxSzIZ+9QFngdw616BopzSIICdH569jY
         R1qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=wgtFkL/FFRFrlD7W9UDHQPj6n9N+/Wo8Jj+YzpO0YxI=;
        b=ryyqDNZwZu5Vh0YrUKeyotNJCwRRdGBPksH5ZkkmRsusw+KzoVUk0fGkD6VoqaIbae
         BLHmzW1i70/yVZX7VU22xTEI9/UivFbuVnhISB9ZXncu9S1zqs5I4zjBLsLDBHrjruuy
         IQ1q7kyg+8QcVS+JJHbELGn6QU4XbUXHaIxCCkmoh58vHWp5GMHC8V2/Y1dgOy1zujIJ
         k76vwTb4tvH8gQJzQyjv59h9CFBOJlpNZIcidvd4gfyGN/G6VNMPpmTu4lmax4hQ/sVu
         d6eW3MOpGs7FRe02sgLoBYAT7d+2XiYXlDPpLybNcI0zT7mozEDxdI2n2psO/V5wz3RN
         ysPQ==
X-Gm-Message-State: APjAAAUBBkFOnHjvHBJjK9WLf6W9cLaTWj5S2KInoXTXUGJi/+m48nuy
        FbiMY6GjpP5KlDuabkBzwHkdzg==
X-Google-Smtp-Source: APXvYqy7J6/8YHbG5klC9QquF261ah07vKhRA9+K09kh9B/5jxv89MEbsHK/KpR4cl3xiNk3tmrOEQ==
X-Received: by 2002:a17:90a:30e8:: with SMTP id h95mr12035505pjb.44.1570124639543;
        Thu, 03 Oct 2019 10:43:59 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:a084:116f:9da0:2d6c])
        by smtp.gmail.com with ESMTPSA id j22sm5289821pgg.16.2019.10.03.10.43.58
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 03 Oct 2019 10:43:58 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Anand Moon <linux.amoon@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCHv3 RESEND-next 0/3] Odroid c2 missing regulator linking
In-Reply-To: <20191001073901.372-1-linux.amoon@gmail.com>
References: <20191001073901.372-1-linux.amoon@gmail.com>
Date:   Thu, 03 Oct 2019 10:43:58 -0700
Message-ID: <7hv9t5vi5d.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Anand Moon <linux.amoon@gmail.com> writes:

> Looks like this changes got lost so resend these changes again.

Yeah, sorry about that.  Your cover letter subjects were quite similar,
and several versions of this series and the previoius series arrived
close together, so some stuff fell through the cracks.  Sorry about
that.

Queued for v5.5 now,

Thanks,

Kevin
