Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 32808187061
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2020 17:49:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732162AbgCPQtD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Mar 2020 12:49:03 -0400
Received: from mail-pj1-f67.google.com ([209.85.216.67]:34871 "EHLO
        mail-pj1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731717AbgCPQtC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Mar 2020 12:49:02 -0400
Received: by mail-pj1-f67.google.com with SMTP id mq3so9022830pjb.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2020 09:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=h0lz/JWrV5mBVYYmE31rxyRYjDlj4PusyG3VqpF4T6k=;
        b=hJIahldB3kwBLmF6WEX4+g8T/gEoJF2F/Zu1jmwyaJFvNiPSoqrfsVl+yWNPucXmIC
         r3NFvkbEXQl7516mNRO+UtEwwJyl5SVVupUXNEA61yHib90qcteXAJwwcWxRgyJgMVNJ
         pKlnibyS2ab8X3VmKFnKDEvW8CYKK8R91yqmg0TPW686zsVYvtQrJc7MvH6/PDOsErBO
         h3fiqhzxUa59KRwSz039ws3/pRdwN6iDO+xiNJffBT/cSCpP8hKzpLC2rmMDt+t7DX6C
         hnCktZvmX02Slz537BiZqERfy8gvfVw7Sa0lNT/vWhdvZtpB2pdyvjPoLxlfp9a4zZFn
         rXaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=h0lz/JWrV5mBVYYmE31rxyRYjDlj4PusyG3VqpF4T6k=;
        b=q1rEMCAlifTq3La/S/rCGU0M8biVMnOtdsSFO9NMlRd3mXI5t3RNzwWS/01ZzdvXJm
         qotVlPWC3DYS7kra4KY8E+RLhTcrLFBvHwmxrS/Q6p1c87bfJU04P85T644PhA33vFW7
         LoBTEhDQ0jQDQSE75qHthP1IlzyTieyjTuhzMfKUQbfZcljk1vPG8PfUZu7SErUOiJAU
         cZnOLVRaq+y6Uae1RPbnLohga7/XqfYp4On5qsGMPPbgQt2cMYNXIEXbarnYVmuaMR25
         pSecajiip357T/Mvb5ygwj1/K0AakYkMbAB2/zlYaBdr7GzRsFwcOSX2wikMEAdvCuIZ
         qi+Q==
X-Gm-Message-State: ANhLgQ23PFQ0XXCRldOjF6gPihL9lQeCnkWGFuqlOOwo4RFr/NM0sEwI
        k9PbbVAwKUKq2sVimPCJd3l6PQ==
X-Google-Smtp-Source: ADFU+vvHnb3P6+r+gPmJOlmhsfZRus2ot8Z7/8HVSaasGivs9AufsgyzegE0B/1zCvhyMqounZtaVQ==
X-Received: by 2002:a17:90a:a890:: with SMTP id h16mr447564pjq.55.1584377341627;
        Mon, 16 Mar 2020 09:49:01 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:dcc4:2a10:1b38:3edc])
        by smtp.gmail.com with ESMTPSA id e24sm407119pfi.200.2020.03.16.09.49.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 16 Mar 2020 09:49:00 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: meson-g12a-tanix-tx5max: add initial device tree
In-Reply-To: <1582991214-85209-3-git-send-email-christianshewitt@gmail.com>
References: <1582991214-85209-1-git-send-email-christianshewitt@gmail.com> <1582991214-85209-3-git-send-email-christianshewitt@gmail.com>
Date:   Mon, 16 Mar 2020 09:49:00 -0700
Message-ID: <7hzhcgutxf.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> The Oranth Tanix TX5 Max is based on the Amlogic U200 reference design
> using the S905X2 chipset. Hardware specification:

Similiar with the other new boards being submitted.  Can you make a
U20[01] .dtsi to share between all these common designs?

Thanks,

Kevin
