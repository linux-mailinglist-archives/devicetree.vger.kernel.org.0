Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 932B27B5DE
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 00:49:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726717AbfG3Wty (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Jul 2019 18:49:54 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:44488 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726057AbfG3Wty (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Jul 2019 18:49:54 -0400
Received: by mail-pf1-f194.google.com with SMTP id t16so30561446pfe.11
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2019 15:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:cc:from:to:subject:user-agent:date;
        bh=AyOWNmy5vkhOMtvfizoy9NHcme6ShFmvYaDFxpjtVss=;
        b=IQLFc52G5Bgqu4WQpIBhhFuI1m7LZSJJb9zty89yaP9wlcq36yHYuQZ5L9sYPn1dWp
         z4xdP3V9oJsGcQVGAwweNWQAOaEbGKaGO534ybxIVqWsLJ4/tPJ8tCJ/T7HtsvYvppR3
         JQ9MZFGtbiWVdzzXt1cIZsDeQu0Lih3YA/iXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:cc:from:to:subject
         :user-agent:date;
        bh=AyOWNmy5vkhOMtvfizoy9NHcme6ShFmvYaDFxpjtVss=;
        b=cvh2eBD0X1EykeyAtIpooqDIFhdKtb8h5D3t2LlGI6b3TWHRHtQg9GpiW9TqJUVAvu
         IA6HV0hprDHXHX8INFVeKh0EsnAPUMhq2ENJnNZtd8DB2grFMiD5yTGJLDPg57KrOtyf
         VyxWytT92dFF5C1edxaQ1m1KIYxdLG/XDQfAMyfrH3n7d2eJl0p9g7FexmY0lvTIbjXj
         NxCpUkNPg4wgvB5vgJI9RS3zGWwJX5EzHcipkZoM/+F5V7leMS1q+I2vEkcuJAkbFmhw
         cnFG1ZW6rv8rBS9jt0C9R2GPezCbREv2E8G1EmQu9PKwN54wjLrGh28oHW9doE4x54AW
         MHbQ==
X-Gm-Message-State: APjAAAUohjkUYzn6r5Zx2bGcYWvIfPOm5Rq9UsIGZcxmkCx8BJd6tUr8
        gfMSJH1yFh9tDWJtJVq3cGXgvA==
X-Google-Smtp-Source: APXvYqwFI+sk4Hdh0m5JaRPKeXUTfbKPUmsueFqjjVnLS1FM3XovmDN7hCtjM6loKzraxQQoIn4abQ==
X-Received: by 2002:a62:750c:: with SMTP id q12mr45455489pfc.59.1564526993807;
        Tue, 30 Jul 2019 15:49:53 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id 14sm64070973pfy.40.2019.07.30.15.49.52
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 30 Jul 2019 15:49:53 -0700 (PDT)
Message-ID: <5d40c991.1c69fb81.7f6c2.028d@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20190523190925.GU31438@minitux>
References: <20190501043734.26706-1-bjorn.andersson@linaro.org> <20190501043734.26706-3-bjorn.andersson@linaro.org> <CAD=FV=VVxKSp6e=j8YM8JBrhsF+T=0=8xDjd_817hphOMWHVFA@mail.gmail.com> <5ce6e0cd.1c69fb81.9a03e.0260@mx.google.com> <20190523190925.GU31438@minitux>
Cc:     Doug Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
From:   Stephen Boyd <swboyd@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v7 2/4] soc: qcom: Add AOSS QMP driver
User-Agent: alot/0.8.1
Date:   Tue, 30 Jul 2019 15:49:51 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Bjorn Andersson (2019-05-23 12:09:25)
>=20
> I had to read through the clock code to conclude that this was indeed
> the design, so I'm happy with your patch of ensuring that this is
> followed. Perhaps add a statement in the kerneldoc for struct clk_hw as
> well to state that init won't be accessed past the return of
> clk_register.
>=20

I noticed that I had a branch for this that didn't go away this rebase.
I've thrown this on my todo list now.

I added the comment to the code, but I'm afraid I can't just merge this
patch to clk-next yet because various drivers access hw->init after
calling clk_register() and friends. I'll have to go through and find the
users by looking at git grep '->init' -- drivers/clk/ results. This is a
pain.

