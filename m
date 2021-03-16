Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 147CD33CA53
	for <lists+devicetree@lfdr.de>; Tue, 16 Mar 2021 01:28:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229868AbhCPA11 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 20:27:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233420AbhCPA1A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 20:27:00 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 653D5C06175F
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 17:27:00 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id a8so9606693plp.13
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 17:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=rZUYFJv5Y/9QIzNACfb+ndYMjACnAQceRVQGoMosV8E=;
        b=OBkNlRb6xN2ayKnNDcsEKLQ2gG31LmzeJ53uREMYQRPjArgckrti2329xjYJSuzwm6
         EXBtiaCXIiqM7X8gBMEtZHXBEQsFC7TZ9hMY4hAvLArEqEFQcZWDKPV/OtFa/x6I8uGs
         Wf2h74dXSXFFJ8Sz8u5Mnrdu/ZOdFEG6OVpbdQiNJ5edGJnJkuxycMFkN8FMINZzRRTU
         fBYgnh1oE1DYRiQYC7ysJ2+Ik7SzxK0nsZEPDKofmyAOyVEAHY5qAi5gyUjUbwwY4Oci
         LP0o81Lk1Rh6Tid+Ugt5JPPck2VD7iFJ4S7FgULsC9zKdZ9l+JoHYzPkyCpEcGl1M2Y7
         IvMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=rZUYFJv5Y/9QIzNACfb+ndYMjACnAQceRVQGoMosV8E=;
        b=BKCQEvXtLF+5mejHF+bemSjVTZ5fjxU9qCAQyY+EJcUenmEIT6KmiR+TQ94uAJ7EPb
         qXZXC+64XO04Pq8HSry3U78nmSt2gy5KgCb3kjHUfndqZrnXz5Ftv852oO+C0HstTBOn
         BxRmPzA7Y41Oc7OQiMRBPO2GqbcBdBS4RTMTPsOeRozjI0TlMJpANwVyqjaG1/SPdZlF
         fa5Vr5NzW0C2qzreoIxIfu//SuyIalXWvf9Oy/5cYg8TeLLbRrJYDBwiNjHq6w7xW6Ma
         T78RTew3a3xqeggVQgw8m1Dy7KQ3vQ35wRq+AdA2sZohu1JdqIASe2pSf3jySYTSBDIL
         TK2w==
X-Gm-Message-State: AOAM531xaV31M7T9sT75Dr22dzaoup7mn92UCY7GqwL/71bbfypMc1yh
        e+wS0k9ca/FrYOZ7nM7lessKoA==
X-Google-Smtp-Source: ABdhPJz4b0lMXsFarjs4hvv7b56QCJbNwlB5BQ3EhjhfU5mMZX5sesLrrn5nUl1ecUAXszvidaqo3A==
X-Received: by 2002:a17:902:b78a:b029:e4:8ce6:fb64 with SMTP id e10-20020a170902b78ab02900e48ce6fb64mr14231808pls.77.1615854419519;
        Mon, 15 Mar 2021 17:26:59 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id p184sm14663118pgp.13.2021.03.15.17.26.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Mar 2021 17:26:58 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Neil Armstrong <narmstrong@baylibre.com>,
        gregkh@linuxfoundation.org
Cc:     devicetree@vger.kernel.org, linux-serial@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 2/3] tty: serial: meson: retrieve port FIFO size from DT
In-Reply-To: <20210315083459.359773-3-narmstrong@baylibre.com>
References: <20210315083459.359773-1-narmstrong@baylibre.com>
 <20210315083459.359773-3-narmstrong@baylibre.com>
Date:   Mon, 15 Mar 2021 17:26:58 -0700
Message-ID: <7hv99seyel.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Now the DT bindings has a property to get the FIFO size for a particular port,
> retrieve it and use to setup the FIFO interrupts threshold.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>
