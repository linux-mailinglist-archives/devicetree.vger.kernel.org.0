Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C247E23E15
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 19:10:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392744AbfETRKX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 13:10:23 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:44341 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392741AbfETRKX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 13:10:23 -0400
Received: by mail-pg1-f194.google.com with SMTP id n2so404959pgp.11
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 10:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=I7O1t0HTMIayhEjL+JB+8Z7qxurHkXoWUdusDgjI/aw=;
        b=QZgNI45DOAwYaDO1iHICnzp4zHKGESb3mm7wGS2JhmkSoAYChyrynGZrvsxv2RRwFV
         O5jOc+IVUU3xphkbgMuIIJBamG/nurDaVgvwodpNwYOXcQomCmQDTu5SpbYpzcNXuD9Y
         6P2mIgfpgnkVSVjWYL6H9vtosiFubgEEcgjE0fv5qHKs5AQ0Xf1efIiGcx62oznUyjIs
         AcSLpXr98N7w+pcE0juLeZxwWhIXxSf1wCbg58+6vO2cWDwaQ0xK6eXP1kOCR7sen0Oc
         WOCF1P4/bsM5Q6CIyzvQu2h1HQp/LP4ZLD0aBF+7YIVJmDzaLvHfXNQYCew9RFUjM+DO
         +DoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=I7O1t0HTMIayhEjL+JB+8Z7qxurHkXoWUdusDgjI/aw=;
        b=WeLuceW/W3QJ3nP7TkkEt/4UyGCEr2dY/Zh1k7BlTwsjZv1SjuetQVwAsZ3rB2GQL5
         6WZlUSvSXFzrwHadKpUDBenJlyagfGJBfQC04QzJ2k9KgxTe5/24W5t32vkLcK44WPet
         xEkPqGY/R/8kzXGG/d8SI7IM8334zjf/tuS6v5oOeI+nTfGhFUOM1s8RFEBkaEAYlDwq
         zU09HxXB4dJdauGMbXHMeQQVFgiMADnU6MNyKJncfK1KZqFF3Y+u1KuhO7YnDMzvjxxk
         Djappin61YAO6Qo5bZdc6hYGVmEBSFjT4ewEQLFfhkMvPll3QEAN9ZBa4sLP8sZpExmR
         PqkA==
X-Gm-Message-State: APjAAAW4BrwlqqvJdv0gFBmSBQcRsb+q2MWFnwfaBi1vtQvTyvuiKDl/
        dLlj6cuVKSiJdaBL9EZ+BU/AQg==
X-Google-Smtp-Source: APXvYqzaOlQqLS/+QC42OQ5Qr8ZY2ncGO7QbGmE1r8wBifQgCAbuNUputplZ7iTSIWjw5VjtKCNaTQ==
X-Received: by 2002:aa7:92da:: with SMTP id k26mr36518157pfa.70.1558372222724;
        Mon, 20 May 2019 10:10:22 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:e483:1cc0:e2c2:140d])
        by smtp.googlemail.com with ESMTPSA id e10sm37432545pfm.137.2019.05.20.10.10.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 20 May 2019 10:10:22 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Rob Herring <robh@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Carlo Caione <carlo@caione.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: amlogic: Move 'amlogic,meson-gx-ao-secure' binding to its own file
In-Reply-To: <draft-7hsgt9842a.fsf@baylibre.com>
References: <draft-7hsgt9842a.fsf@baylibre.com>
Date:   Mon, 20 May 2019 10:10:21 -0700
Message-ID: <7hmujh832a.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Kevin Hilman <khilman@baylibre.com> writes:

> Rob Herring <robh@kernel.org> writes:
>
>> It is best practice to have 1 binding per file, so board level bindings
>> should be separate for various misc SoC bindings.
>>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: Carlo Caione <carlo@caione.org>
>> Cc: Kevin Hilman <khilman@baylibre.com>
>> Cc: devicetree@vger.kernel.org
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-amlogic@lists.infradead.org
>> Signed-off-by: Rob Herring <robh@kernel.org>
>> ---
>> It seems this one fell thru the cracks and didn't get applied.
>
> Feel free to apply directly.
>
> Acked-by: Kevin Hilman <khilman@baylibre.com>

On second that, we're going to have dependencies on that for the v5.3
cycle, so I'll queue these up.

Kevin
