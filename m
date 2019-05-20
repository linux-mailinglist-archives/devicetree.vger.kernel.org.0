Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 345B623DCC
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 18:48:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389843AbfETQsu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 12:48:50 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:35204 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389301AbfETQsu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 12:48:50 -0400
Received: by mail-pl1-f195.google.com with SMTP id p1so1599662plo.2
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 09:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=Vpv1DN8EBhtKb87cGhyJ5jDNciiux86pE0rF8kV5anU=;
        b=QPI/0EXLgUxAizQQp+dpGLgwI1Z9jwTSQYDwrECfSRd3uZls2oSgbhTYBR7s/zDFRq
         wyMaNtE7ghGrsfUn3wl0iYUp6+pcXKHmQuWle9Pw9Ez6+dxZgxyTpbHn9NOirC7WRbjT
         ECm5VTMyDT7OUfx/Ogt404q4ftwdgiEWY6Eo/HIAfZLcb3Hhg7hrzSWUjPoWfCNanAUO
         jMHHo/O/aiR3vwTxC+nAKSvimPab6BfP6J8itkE6ADAUUNMiF7StTyeVJrjANhG8IDSB
         zBXMxekpJl9tGqXo8do3NMWaL5SlbfSzBYD3qZi4vKHIgYoFjMWk16rwSA2rtLKTJ0gz
         30oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=Vpv1DN8EBhtKb87cGhyJ5jDNciiux86pE0rF8kV5anU=;
        b=hvG89ze0tK/mwXcr3LZeB04JT3+KxbihKNKiNXXdL7Jv44vPYLtVtEk+cXC4orQvL2
         X0sx8u9SNeF0dNeTpLsJ5ByWf4AgTPwdEw0CIwaJTIVa2Xjdle/icepbCojEHcqCFaId
         fgop21v5ET8NRz2XmXOJbNQNQfcBxzE089W1qsR6z5PihjmjxeQooZP0q/MXBn28nrDm
         CgW4HRyAX1LRCzgn5AEgUzK9AqQkNAndEbxMe0OG1A/9Lhf0bB1WbFy0UEJba2SndoWc
         qozBn2MjOoiIuAtEpL5GEZk7F2Q59XQUnwzy8fLv8KWjSLZwVPRZU/c/58QY7m29uMhE
         1VVw==
X-Gm-Message-State: APjAAAXeY7i9InTa+Qp+b/+hSKUyChB8KeIBX5SYl5ZE6j6IX7d46StZ
        ZNWIMJh69RQZ9tzavM8DFZTcyA==
X-Google-Smtp-Source: APXvYqysMaZyPln+k/pU+4hULFRtD/HxMzhT4oDAxWzPHQZQ1SyWi45lHBtw8TfwNthofEo4JX3sdg==
X-Received: by 2002:a17:902:758b:: with SMTP id j11mr19217707pll.191.1558370929609;
        Mon, 20 May 2019 09:48:49 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:e483:1cc0:e2c2:140d])
        by smtp.googlemail.com with ESMTPSA id r1sm11689953pgo.9.2019.05.20.09.48.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 20 May 2019 09:48:48 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Rob Herring <robh@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Carlo Caione <carlo@caione.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: amlogic: Move 'amlogic,meson-gx-ao-secure' binding to its own file
In-Reply-To: <20190517152723.28518-1-robh@kernel.org>
References: <20190517152723.28518-1-robh@kernel.org>
Date:   Mon, 20 May 2019 09:48:48 -0700
Message-ID: <7hr28t8427.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rob Herring <robh@kernel.org> writes:

> It is best practice to have 1 binding per file, so board level bindings
> should be separate for various misc SoC bindings.
>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Carlo Caione <carlo@caione.org>
> Cc: Kevin Hilman <khilman@baylibre.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-amlogic@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> It seems this one fell thru the cracks and didn't get applied.

Feel free to apply directly.

Acked-by: Kevin Hilman <khilman@baylibre.com>
