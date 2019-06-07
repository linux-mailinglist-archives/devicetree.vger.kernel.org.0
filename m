Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CACD138AC0
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 14:58:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727467AbfFGM6W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 08:58:22 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:37634 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727102AbfFGM6W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 08:58:22 -0400
Received: by mail-wm1-f65.google.com with SMTP id 22so1831696wmg.2
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 05:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:subject:to:cc:message-id:in-reply-to:references
         :mime-version;
        bh=GCl2JsjcOHFck9IG6Qi/zqlMGgAkshSdJspp5JsjjMU=;
        b=UhgoiPmldxiwb7oWLHUmqWzjZ5JdIYVYusQ2p84qti2KDhk12w6l/5ZRV7L7IGXb1F
         filSrIWXX/fbEQ4i3HD3+0EqZ7smYmESmm8GC4lZ6iB64nuyjIt/jx1S0Tm8kfRFn4Sy
         s+v4dzTB1RFWZk5FgLoEDRfuym1jqxQ/g0csyuHBeZXvvbLNPCJlFkV/k2RrEGQzO3jh
         vSHm6Jk0VayQQFJeDqLAqIDJ1HnGI4gTmbhHf0yJtxGGPMk7SH0I18ouHnI/ITL7MMfY
         wYcwdT/XRY/pdebjkstfBxBkD1+xqq3Ua8/h+yZ7g/KvSbyBeml4SSHCz/jeBYJLac6j
         RicA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:subject:to:cc:message-id:in-reply-to
         :references:mime-version;
        bh=GCl2JsjcOHFck9IG6Qi/zqlMGgAkshSdJspp5JsjjMU=;
        b=HAnuNNZuEefU7biJD5BpekVXYs7xrvzZ0qGUnHl5ZnWvbHo5yzBoFrsPT7h026mHf3
         mJZta37Edsy6kgHWDxCsYSGbsbyc6FJbeiWfJPIjf8qkjm2AHK2DuuCaGWvEaCR8OCCt
         kNouK/G/2SIG+gaqRQ9rIb+DuZT88+Gd4YEWyWAyTH++wUuz2ng5thKuNeGpzIBUBR17
         Xff/aT5lcEisKOsPU2RtNGczziyB0JOH8ooaMq0JlrXcP9A3a7FWfTVjUWlPsljICMu4
         S5/hm6bQjwJg+SxCel5tr5S3JnM+eQXV6fz+Y2w4wgWLfYyyULrcAOsRxkNXHLIJ/fvT
         3QNA==
X-Gm-Message-State: APjAAAWVNRGqFL85YYK4Shi8GwSAhvaisJtZsvHwaGY76OoTXcQHTjfM
        OzwiwE6zPkvBvPRSclYlvFctpGqJQRpvJg==
X-Google-Smtp-Source: APXvYqy4HQD0rZ0fmBIuKYKdqdoX9LGlMCkg6wigunQyV8+8Sp7+NJyjHHMywu1PmjV6i1AlOJPQmQ==
X-Received: by 2002:a1c:23c4:: with SMTP id j187mr3682817wmj.176.1559912299898;
        Fri, 07 Jun 2019 05:58:19 -0700 (PDT)
Received: from X555LD ([2a02:85f:1501:7500:ec1f:a19:154e:276])
        by smtp.gmail.com with ESMTPSA id y2sm2199712wrl.4.2019.06.07.05.58.17
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 07 Jun 2019 05:58:19 -0700 (PDT)
Date:   Fri, 07 Jun 2019 15:58:15 +0300
From:   "Leonidas P. Papadakos" <papadakospan@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii
 performance.
To:     Peter Geis <pgwipeout@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Jose Abreu <jose.abreu@synopsys.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Message-Id: <1559912295.22520.0@gmail.com>
In-Reply-To: <20190607123731.8737-1-pgwipeout@gmail.com>
References: <20190607123731.8737-1-pgwipeout@gmail.com>
X-Mailer: geary/3.32.1
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


I'll test on my board, but if in the end it does end up being a change 
to both tx and rxpbl then we can replce the 2 tx/rxpbl options with 
one, as far as I know:

snps,pbl = <0x4>;


