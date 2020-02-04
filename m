Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 280F41513BB
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2020 01:40:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727128AbgBDAkB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Feb 2020 19:40:01 -0500
Received: from mail-pl1-f196.google.com ([209.85.214.196]:33771 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726994AbgBDAkB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Feb 2020 19:40:01 -0500
Received: by mail-pl1-f196.google.com with SMTP id ay11so6530902plb.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2020 16:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:from:to:subject:cc:user-agent:date;
        bh=nDX2pOrFO8+HqSdSgLX9aJulWTBY/K4HRKE5kgWbO3o=;
        b=RQmp6/YfNqfWMLRf7Vpv1rU6ihIhTpfXh2fJauyZWP+ac/wMTKsf+qz10keMfpFaek
         Lr7xSjSsaaAWO2S8eiZsCfg6C4m7VapEm26sWbZ9V2fccFKfS56oJyNJTztMeLIU72qZ
         o/5RBWBySGZg1YT16fcw8EE5cMZYObM5qlydY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:from:to:subject:cc
         :user-agent:date;
        bh=nDX2pOrFO8+HqSdSgLX9aJulWTBY/K4HRKE5kgWbO3o=;
        b=qCbQiVcRcckKhME/61Kq62NUVStlYQL75DvVr13gE8Yq1TFuX6vQ3gcgoyROT0xJIU
         BchmVMUiWM3q89Gn4fSUzUjLpGdZSUEtRMIquNKJ5/N6NC3p0RRoatBmb/CEBg+3qG/d
         joyGV1XSD1SjQv0QThehHHIvPvXJ3SyuIp08NaQLFRFg84xfGNwu5r1ZCTU++Ko1NWAt
         JmUrBzAnxvyLs0LfE3mRsty9YQaNoTQ9o/1dRRO3zzvcw6ys8bglTfQitZJN9nuRocfO
         jHBtfZxYYVvKkiFyULR4JyFUL1pC3G5YH2gXOuwZUxVYW5pOpCV5B7mcz4Tyz2BaDk8P
         yb7g==
X-Gm-Message-State: APjAAAVcwQlckDKEQ+OgvNoj9/i1nKZTQykTbOPz4dBdanu1NPLtUJuz
        ra8lfiNh657CmrK9rH+Kh2LkUw==
X-Google-Smtp-Source: APXvYqyNUNXKUOiH6nIoLqHpUNf4PMruM+fuDE/kmUzYKdah7fcsP3wiQTOlxMeXa9QVo0Pmc44D6Q==
X-Received: by 2002:a17:90a:2ec5:: with SMTP id h5mr2347158pjs.79.1580776800370;
        Mon, 03 Feb 2020 16:40:00 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id r7sm22171384pfg.34.2020.02.03.16.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2020 16:39:59 -0800 (PST)
Message-ID: <5e38bd5f.1c69fb81.78a32.df02@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1580305919-30946-4-git-send-email-sanm@codeaurora.org>
References: <1580305919-30946-1-git-send-email-sanm@codeaurora.org> <1580305919-30946-4-git-send-email-sanm@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Doug Anderson <dianders@chromium.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sandeep Maheswaram <sanm@codeaurora.org>
Subject: Re: [PATCH v4 3/8] phy: qcom-qusb2: Add generic QUSB2 V2 PHY support
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Sandeep Maheswaram <sanm@codeaurora.org>
User-Agent: alot/0.8.1
Date:   Mon, 03 Feb 2020 16:39:59 -0800
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sandeep Maheswaram (2020-01-29 05:51:54)
> Add generic QUSB2 V2 PHY table so the respective phys
> can use the same table.
>=20
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

