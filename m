Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 78C961513D3
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2020 01:52:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727149AbgBDAwl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Feb 2020 19:52:41 -0500
Received: from mail-pf1-f194.google.com ([209.85.210.194]:36786 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727044AbgBDAwl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Feb 2020 19:52:41 -0500
Received: by mail-pf1-f194.google.com with SMTP id 185so8528758pfv.3
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2020 16:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:from:to:subject:cc:user-agent:date;
        bh=e0hGtetyLqxwKOQo2k6I51N43ELPbdPLpjCR8mhCckk=;
        b=jOS90TyKA0BwvhBC6yX/AhmQDWbhPvgHGHTtukpOI/NWlz0gEHSJan2mJ6KcDobylz
         n91Sem8Lo6HMG2OrEox0ga7vU3UNDNs0GZxoyllC6FW/7+amVQqOnH5YBwFtxM8p8a2D
         W996UvzdpqbyA4xpaxNgDlFsdlClfH0kxPcm8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:from:to:subject:cc
         :user-agent:date;
        bh=e0hGtetyLqxwKOQo2k6I51N43ELPbdPLpjCR8mhCckk=;
        b=d/ws6YOxIeVv3UIEd0oUK6mIl9tqyWz8U1M3tL+HKjUh4WF2SZy7aX2sV73F8iSCI2
         XfRBYkmoIAMeY7FTAGmp+xNjysqxqcBxYzQRMyo26ohE62YdJPA4kB25QcTxxbFAc+hW
         /LLxnGxofrBlY2kx2jR4if73W2x03ihuA/LiP8IC6qAKvaJZwOX2tJabcY1lDwU7dcgz
         m0w19I2V+U2ZXmuzEBYfLGHtbcxNhV0eKGNhPwN5Vka2AeSFk767OfOClGKWNSxRc02d
         3GG5xq2mPJmsvueK8jq0CTESIBSBLUCam5Hvf0fcy0cP4bLoj+9iaH9oU4kKea6EEuyz
         iPhg==
X-Gm-Message-State: APjAAAWXTIiY5OESI8N55uVf8M2lZvXO+SuAydX1+P7bfixRY3uagXM5
        tyCzNtjHvRnvRsvOPI0+/TcpNg==
X-Google-Smtp-Source: APXvYqzr/m9f0dWQxcnxMEacSzGmlleq5++9dn2cIjg2wCbvtdEhQuQRIX1GOcQEayWeCP/Hni8u6g==
X-Received: by 2002:a62:1883:: with SMTP id 125mr26963112pfy.166.1580777560323;
        Mon, 03 Feb 2020 16:52:40 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id a13sm4114874pgk.65.2020.02.03.16.52.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2020 16:52:39 -0800 (PST)
Message-ID: <5e38c057.1c69fb81.4b4d5.c40d@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1580305919-30946-8-git-send-email-sanm@codeaurora.org>
References: <1580305919-30946-1-git-send-email-sanm@codeaurora.org> <1580305919-30946-8-git-send-email-sanm@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Doug Anderson <dianders@chromium.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sandeep Maheswaram <sanm@codeaurora.org>
Subject: Re: [PATCH v4 7/8] arm64: dts: qcom: sdm845: Add generic QUSB2 V2 Phy compatible
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Sandeep Maheswaram <sanm@codeaurora.org>
User-Agent: alot/0.8.1
Date:   Mon, 03 Feb 2020 16:52:39 -0800
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sandeep Maheswaram (2020-01-29 05:51:58)
> Use generic QUSB2 V2 Phy configuration for sdm845.
>=20
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

