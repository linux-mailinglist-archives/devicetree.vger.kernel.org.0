Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF7BC304B4C
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 22:28:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727840AbhAZErt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 23:47:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727796AbhAYSnF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 13:43:05 -0500
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A682C06174A
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 10:42:25 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id p15so135831pjv.3
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 10:42:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=4onalLG5dOSDL+p5kQVrRWnpJSo+5uub7PjHtub2eVI=;
        b=TgtdO7gF+yWLGfZrm6l4+J45ey1ut/gRJ5xjfDQrfgnhZpmmPsDZ9agun9ptmnEiq2
         6fQCmwKxwSYhygO0LQq3WW7YZkpZUmF5LZ46SfYFRZReYfjwG2bVxhjq4RCP07942E1i
         u3ET02yKGmNswpVAE5hF5QKgCMw1f20p+jeECC2QyMQ5DLObdk6O+W/kOIdQgM7TqVT/
         TnbLP2sYhvUlYmNpNLw1MSBy/qHehmNoYxUy0EDmH/ZH788Ix4EtBEM7yB/EGvWQez/g
         mazi3xrJgMDLUgNFqJnkdezISN5ydy4dn2/3b+PGIInc9h274Z1L7NlPr1i8R7hFByOl
         YsXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4onalLG5dOSDL+p5kQVrRWnpJSo+5uub7PjHtub2eVI=;
        b=aGOtrLSynKaYdv1aAarKlfsRiBeUoY409kfvHwhdpTD/lTWkg5rIMqU0GOMDqv0rN1
         gdc9+k9VTm6ZUMKl39DYiloG8mlPmpYQNePVaDeerrMYzw/gEEW21/egW8efNiBpWQW1
         Eu0m+/nB+14oMBdX/hhlzIFDu5wC/HM4yZYBlwe2aXKub7ymVitHgCzZeOYvuPEhIXqL
         P40fFgOjh6oq1i5KOCtTaPku0CKdd4apOpn4bbC1ioLhxUXk+84j6Gq3zugLlWgTITI8
         apm3VQMG36reiXBilD1KNZXw9BXbXIJHbG4GzWWcN6c1bNSu+GqjHJutPAHERvLLh0rR
         hnew==
X-Gm-Message-State: AOAM532nbDEVrc5Id+/pSexOAm1FJpwqXruXt8ag9N7o5k/k+CdAdxUK
        o9cm7pX/x798u6WgdT1jUIh9KA==
X-Google-Smtp-Source: ABdhPJzGc42I9MCeoVi4XGLbASjLAAVZt8aQijY8wbGw7XEv7s04GgAhkaBUSd45HnRv1Ivu+5QWlw==
X-Received: by 2002:a17:902:8bcc:b029:dc:45d9:f8b2 with SMTP id r12-20020a1709028bccb02900dc45d9f8b2mr1885881plo.62.1611600144701;
        Mon, 25 Jan 2021 10:42:24 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id n1sm75584pjv.47.2021.01.25.10.42.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 10:42:24 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        Christian Hewitt <christianshewitt@gmail.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: meson: shorten audio card names for alsa compatibility
Date:   Mon, 25 Jan 2021 10:42:19 -0800
Message-Id: <161160013614.17631.10125019287812409672.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210101063737.26635-1-christianshewitt@gmail.com>
References: <20210101063737.26635-1-christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 1 Jan 2021 06:37:37 +0000, Christian Hewitt wrote:
> This patch shortens all audio card model names by dropping the SoC prefix
> (for conformity) and rewording those that are still longer than alsa's 15
> character name limit [0] to avoid userspace config issues.
> 
> [0] https://github.com/torvalds/linux/blob/master/Documentation/sound/alsa-configuration.rst#common-parameters-for-top-sound-card-modules

Applied, thanks!

[1/1] arm64: dts: meson: shorten audio card names for alsa compatibility
      commit: cf21697a8c5bf65eb4e05717ca5caee8215c3797

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>
