Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0890ED96C5
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 18:16:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393387AbfJPQQ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 12:16:27 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:37318 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390076AbfJPQQ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 12:16:26 -0400
Received: by mail-pl1-f193.google.com with SMTP id u20so11506025plq.4
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 09:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=ResC/hhiygB40CQNO8g6ikuMbA0ju2V41a3xODY1vVE=;
        b=Ha6hDOJlpfX3oR0Lo71lCcmpwUHRfznUaoRUnv6VA0oW8DYo3V3iOQyLrQhSnQHMDH
         1ZqNiwjWcgmcyZNCR5vx+Haaa5wXkWQpq6vttdANH4PDcoef4Xkwm1JLMkYH177KuT9U
         aE0h4rllUx2sP597BRDIh2bm46Peqp4URVGQAF0COhIR3qBtfppzGOgxAypDH0WUJ9Bd
         u3jfndnQaIm/XpKsIRf/sfxd0Nq6lXDXR4k1bVCGe3GEm+2qA8S2Mo2JeuPHeSk8I8Q/
         XUMLkJAyfF6Cgy7WQ4R3zO49FexD4uBIReK0ZZeILFTcqg6NC6smoewkpTm81cIregw/
         3/fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=ResC/hhiygB40CQNO8g6ikuMbA0ju2V41a3xODY1vVE=;
        b=oc+r/3piAkSoNkQJZCX5x89XSVAu2zqmrcGBdFnPSNXUwnYz2hXs3hDSLTOruMEHXH
         LURxTtYx85jrZRwO2me5OL2BYdtI8WOjZuk3Q2Gcap82q4iNPFy7j8nrA/9pDPDlDcdB
         G3ythLeWv7QadTJGILeznYpSWdaWuo28/R0ShWYLS0Shnqw6EDG38Xy5gIh4sy4LB1Ol
         06MxM16R34KJe9jqIbD2mnHF4OSu3fdm+kFwSzb381iv+u4RZKgTM11koRXauhZc7lAo
         clPIxn3e/qk2MUQoAqOj77FV6BzdWRDkgO5VNEGBqc9D7IiOolJSpT20xD1jvRTRYRAJ
         KxLQ==
X-Gm-Message-State: APjAAAXDjWpIaR9FbdVbZ1TRVLH2m+T9vOTi8NPjCAyjotB5g79yP9N9
        cmFkBC5VzQBWV3hbjg+gjUVrVzue34E=
X-Google-Smtp-Source: APXvYqzcmnTEOiuKSt7BT2tO2CZWNSW1Cst0QeV7AzXL8vZ26nPCMzLc9eVwAlMHXVXLysywqp/i0A==
X-Received: by 2002:a17:902:a5c3:: with SMTP id t3mr42557480plq.335.1571242585996;
        Wed, 16 Oct 2019 09:16:25 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id e10sm34459145pfh.77.2019.10.16.09.16.25
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 16 Oct 2019 09:16:25 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: meson: sm1: add audio support
In-Reply-To: <20191009082708.6337-1-jbrunet@baylibre.com>
References: <20191009082708.6337-1-jbrunet@baylibre.com>
Date:   Wed, 16 Oct 2019 09:16:24 -0700
Message-ID: <7h7e54hdif.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> This patchset adds audio support on the sm1 SoC family and the
> sei610 platform

Queued for v5.5.

> Kevin, The patchset depends on:
>  - The ARB binding merged by Philipp [0]
>  - The audio clock controller bindings I just applied. A tag is
>    available for you here [1]

I've pulled both of those into v5.5/dt64 so that branch is buildable
standlone.

Thanks for details on the dependencies.

Kevin
