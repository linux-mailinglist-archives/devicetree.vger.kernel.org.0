Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8D7EE4A73E
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 18:43:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729550AbfFRQn3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 12:43:29 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:35140 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729319AbfFRQn3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 12:43:29 -0400
Received: by mail-lj1-f196.google.com with SMTP id x25so255750ljh.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 09:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=PmUtOKbwJ4eVMkOuhlC0uRgI+GJZ2DiFmkatq42aofs=;
        b=noVIkCDp4DXaUXUJYjJsp7quJyO98EaXAo/9wvAq8keNzIId4a9i4vKnUA+Re+11e4
         ShXLX4ryoM3/+LkuRIOHVHN19KrnICnrAVN4bOzj7AlcbMIee5zkGx2Ta4hGaQjL+cpQ
         tlt0BRnfrvcixg4/oRl3z93KcWQxj+yDXiBTLO/gQw8l9N7YzNjGuePC0Dr0PV3YgJyd
         gddC3zY8TcfVDpIamLrJUlaPXdo8Zj1XVl3xdhA1oy0pLS5P0lgiKJwmpGs+CR7/4JDJ
         rsfYyDjudEYOhLB8CxtNOHeMciHQ6jcxfIoa0OOFSuZys1Vw5I1EmvaJLfne7nvioDKh
         6Ydw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=PmUtOKbwJ4eVMkOuhlC0uRgI+GJZ2DiFmkatq42aofs=;
        b=VIGYUAPMkkd6vUaLQ1wiRnBa3UillrJ19z993PUhufQZNCQLxx/v391zU35LpBIWWM
         r4W+ie5qy22eebNc5vouiW89PK72NtOkZUQG3/Per4SxdI4NJkTBm9wlymy36hbyYuQ5
         cwOUpLFxUUxBzbhZjvmpRN5U25We/GiBRCvdMleoQcx/uLH1PUwlXklo2hYtY+YUIEkA
         ZNZJrO7T0srSWB4hQISeNyYcf51VQNLAc4turNFQBuDHjTbjN0BnHd4RVaDPtEahu2gS
         wPqJTMzm3bCzprkzH2DPwcTxcAa8TQq7tg49pj5xcaHp5FXs/1XRhtDmJ/sTPYCOxKJ2
         RWuQ==
X-Gm-Message-State: APjAAAVpsOV5NYBLX0v4nsSQXG6RCtx1DuBjWzD04vJwB20G3Q8hG6kc
        g7X44xZ4OhbCQJpE3dVLH/sJIgZHxc5A8nOfzAw=
X-Google-Smtp-Source: APXvYqzttCfZEG77i5UhIYcLtVQf6CIc14p1/0gQIwvbf6Qaa3h5awAgK1rwzNrkpz9/uVFGrZM9qO/N3/XXZUSQ4UU=
X-Received: by 2002:a2e:5d1:: with SMTP id 200mr45338385ljf.10.1560876207427;
 Tue, 18 Jun 2019 09:43:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190618155834.15545-1-sebastien.szymanski@armadeus.com>
In-Reply-To: <20190618155834.15545-1-sebastien.szymanski@armadeus.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 18 Jun 2019 13:43:38 -0300
Message-ID: <CAOMZO5AJbO11Cprr1Pd1qmdWahSVJm5C_-8Y8Y0hWgPK2a=AmA@mail.gmail.com>
Subject: Re: [PATCH 1/1] ARM: dts: imx6ul: fix PWM[1-4] interrupts
To:     =?UTF-8?Q?S=C3=A9bastien_Szymanski?= 
        <sebastien.szymanski@armadeus.com>
Cc:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi S=C3=A9bastien,

On Tue, Jun 18, 2019 at 12:58 PM S=C3=A9bastien Szymanski
<sebastien.szymanski@armadeus.com> wrote:
>
> According to the i.MX6UL/L RM, table 3.1 "ARM Cortex A7 domain interrupt
> summary", the interrupts for the PWM[1-4] go from 83 to 86.
>
> Fixes: b9901fe84f02 ("ARM: dts: imx6ul: add pwm[1-4] nodes")
> Signed-off-by: S=C3=A9bastien Szymanski <sebastien.szymanski@armadeus.com=
>

Good catch:

Reviewed-by: Fabio Estevam <festevam@gmail.com>
