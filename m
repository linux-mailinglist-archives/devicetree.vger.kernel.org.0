Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 506E1BEA64
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 04:09:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727762AbfIZCJW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Sep 2019 22:09:22 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:46640 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727407AbfIZCJW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Sep 2019 22:09:22 -0400
Received: by mail-pl1-f194.google.com with SMTP id q24so305114plr.13
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2019 19:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=4Qvr+Vq36lJK7eT6do5ApSmMPZYoIZa8xsw9/sgUwoA=;
        b=CxvxN1Ogf01q/7maIA+Lps+CDXG/nyEYsAaIxrAqtTBnkzCyjIWSN4lNyu6m5WU7fU
         AAisYDU6GvpyuyFuhVx9OGU0JOBF4jCcnQq7H/ol4gq1d7ObG3zM/btlwhflxRrPBcJm
         Zz8YTv9WfqZcPH8zc10iV+kvExXG2VgYiKAlEpCo8eHFi4a2jy0qQXEU0neryX5nsgiU
         bAAKJFyH9ItwH5NHZFDHeu9nwOENXyJFOvQHImXYdIf3wI0pUNsUxOTN6hk4Yo4h7uLD
         ET8l2bTm5+YYG0HVlWQzRYHnhD2KUScW9c48I4te1HYQkqGbHPPHnJaROjwHhNx4bTVT
         vg/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=4Qvr+Vq36lJK7eT6do5ApSmMPZYoIZa8xsw9/sgUwoA=;
        b=O320Pg8LzFSzYY/SRQcpGOJKc5uIHslNse5UT7LBFpPOf+FXkzRdyCwYksIGvxU4lM
         ElbcaZqO0z0dtgF/+Tv/9UY7+ENRXpwzcllk0am6MJPYlcnaxhFeuGP9kLnLdFAkkkib
         U4hKrv5ND0yxk6lWfsWTLAZEAZaP0S1tdvv0wjKmXabM8NI9viNvKF5mFIoHmYBW7i1u
         H42JAcRiaVLfr/Jh8n6rTFakUDdy08cQTim0l7zCiElXWtuOD/AU1U7Tmf4yCTcawme6
         pIG9cHYpNP3LTNmpD+JitQDW5zNx2T4ccv0sv1Kl3wog7bys/CWnOk8LOk1eA093mGyd
         hU5g==
X-Gm-Message-State: APjAAAWBE07ZF/xlutMj3vEmB9YpAs2/7vqydp+wlXCHu9Rl6ghTwIO1
        w1jGGvUm+K8Tmjgzm8vyZ6Dk8w==
X-Google-Smtp-Source: APXvYqw+uH1sv1ftk9JTvni+8fEIkYi1Eg0n64bz8iq+sLbx2N8otKyBHJqizMA2EP+GOJW2vHjRDw==
X-Received: by 2002:a17:902:ac98:: with SMTP id h24mr1668421plr.64.1569463761775;
        Wed, 25 Sep 2019 19:09:21 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id c128sm332461pfc.166.2019.09.25.19.09.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 25 Sep 2019 19:09:21 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Chrisitian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH 0/6] arm64: meson-gx: misc fixes and updates
In-Reply-To: <1568041287-7805-1-git-send-email-christianshewitt@gmail.com>
References: <1568041287-7805-1-git-send-email-christianshewitt@gmail.com>
Date:   Wed, 25 Sep 2019 19:09:19 -0700
Message-ID: <7himpfst9s.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> This patchset:
>
> - Fixes bluetooth on Khadas VIM2
> - Fixes bluetooth on Khadas VIM
> - Fixes GPIO key dt on Khadas VIM
> - Updates model for AML-S805X-CC
> - Updates model/compatible for AML-S905X-CC

Queued for v5.5.

Thanks for the updates/fixups,

Kevin
