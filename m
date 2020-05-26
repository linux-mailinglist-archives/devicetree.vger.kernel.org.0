Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 537D91C2AA8
	for <lists+devicetree@lfdr.de>; Sun,  3 May 2020 09:54:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727799AbgECHx7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 May 2020 03:53:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1727859AbgECHx7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 May 2020 03:53:59 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CD56C061A0F
        for <devicetree@vger.kernel.org>; Sun,  3 May 2020 00:53:59 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id x2so3958174pfx.7
        for <devicetree@vger.kernel.org>; Sun, 03 May 2020 00:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=lqjnPYXn32XDo0uwwbeceHVvngW84dUENikJcKKBwN8=;
        b=MX/rAT1krwugoSlkOJy58eX7DRDLePH+rS7wFPUOwLlifDlqi8IS+F0L8nX9/Otiv3
         QBlTaKbtTMTJdYlK+uwvG2oJqGNZTl0bHJm54XLZnZN6ZbMneyBdnrWLAvoaLjK2uXrT
         8PrwH7of8SHNemxoNxWHf4PXv6ZffOFZCd0NQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=lqjnPYXn32XDo0uwwbeceHVvngW84dUENikJcKKBwN8=;
        b=PGIuTqW/sDmHw4WpeBYstVwEHXwWLCwN84IrratuiqZA0sHQYl4d4cquj6PCXxtV+5
         5mKm8UWIYl/mJkg7rN9dAAO3SxydNRKotpOHPc0TencDJtNoocjWRTUwqIekkfnWUa/W
         6JvmdN7vtZdLWLYztcHDIIEacfxoyD1rCfs2LPCcYRQHgl3ppT37H5WmlmTfJLRoPT6Q
         99yqmxhgKToRKG3fzOEf6oRpOKPekArAx9LfD2FQRZ6TgKWLJFaH5g0ImF7De7KdADLq
         Y7+QU0pr1PiQe+7dE8+eXZI00P7m5FRnIlYg1+qlGlPof+Cx0epcLLaLQTfaD5oXYdh0
         o6Dw==
X-Gm-Message-State: AGi0PubWasvXQTLcF7XSNepaLDbH8dLkQ/JmdHIWc6u9EvhJ84jyA6Xb
        PGFywxWllIu+pbw9/d1Y65l2Aw==
X-Google-Smtp-Source: APiQypKuQsStdUvfPGRsK8okPUJ9KuVy7WCe8oITb3Qnf5Usr7WIzv1W2pNeujbXzvH3hQ8jASco9g==
X-Received: by 2002:a63:1608:: with SMTP id w8mr4704729pgl.232.1588492438795;
        Sun, 03 May 2020 00:53:58 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id k6sm3677501pju.44.2020.05.03.00.53.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 May 2020 00:53:58 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200424085121.1.I9d1e84d30f488cdb5a957f582abaecd2c0b24d70@changeid>
References: <20200424085121.1.I9d1e84d30f488cdb5a957f582abaecd2c0b24d70@changeid>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Add "no-map" to cmd_db reserved area
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     Maulik Shah <mkshah@codeaurora.org>, mka@chromium.org,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Date:   Sun, 03 May 2020 00:53:57 -0700
Message-ID: <158849243728.11125.2420286390909147729@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2020-04-24 08:51:29)
> The example in the bindings and all the current users (except sc7180)
> have "no-map".  I'm pretty sure we need it on sc7180 too.  Add it.
>=20
> Fixes: e0abc5eb526e ("arm64: dts: qcom: sc7180: Add cmd_db reserved area")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
