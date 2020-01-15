Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0A00013C36F
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 14:45:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728912AbgAONnl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jan 2020 08:43:41 -0500
Received: from mail-lf1-f66.google.com ([209.85.167.66]:46005 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728963AbgAONnk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jan 2020 08:43:40 -0500
Received: by mail-lf1-f66.google.com with SMTP id 203so12709518lfa.12
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2020 05:43:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WvJ5Z2/T47boGkRXpaAdhYTTXCERv6l9eGQZW9r3OWc=;
        b=u/1h9zyZVZCZ/6ksq1jbCZZKjRZ63wlH2fdCVMcRZcXO70PEfEV2gJRYoZdyeFRmkh
         2KUZwgBgfWwTGeEgxBz7cRPYeXaaoGAlViUmc6Vpp6QWpEwDamCjSNVhn3KthgVs+esX
         tboPn2fe718uW6PcV5wx0WY2cDhCZQ71FFPAZ8c6aJ58NcgOj0aN8k5Rh6kGitDYPLjc
         3ZDCnRLLB/ewgkphzVhq+k6/B12KxjkCdN1lb8TW4LYuwH38xMmweWhBe0zNne0vpgC8
         alJ0vMCC2Vj6mEuBpwnuuiNxUHjvV8RauPDRSTXtwkZ3QS4J6s4uo19+oeAcfkyzjqvG
         YduA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WvJ5Z2/T47boGkRXpaAdhYTTXCERv6l9eGQZW9r3OWc=;
        b=EYYl1NC1H8ML2GDFBNpy2xZNU25XmY284p7A8sMJBTC/0NVG7h6eSp4TlBr/FhoYpJ
         r0sDVqgXIqUqIOBul4q+ajPi1Th9dXeZ8vfEWHqkMHcXH02feKDajiUlozjl1cNI7lVe
         J7D92qlOFi7yMKZhhQR+vNEo3HpaXvQ/yIog1SlPUdyRpnbbMKflk0QJGJSnQv21OhNG
         6HYXDCgP0h+K5rPk4cq/WJr1vCDWmGObJJSkPeA79QluNAXKNJH5fmWuyS2XZjOcNCSL
         qnFzIte7+hTM1zAL9Ll41Kk5pD9e/kmw2EhH0wWJUm143d6ibG2eBAk2IoIzaXZD77Bv
         jy+A==
X-Gm-Message-State: APjAAAXP6kf/eCirwm+nPBv0ZKWgBtb0AeagrMNTK3Bh4Y0Q2CYYlNSe
        dOvku6IAe4PNNtVRx13xltj01yIdu7C5yJHQkAf5Xw==
X-Google-Smtp-Source: APXvYqyeqzw7+mkef4toWLPOG9ScY8IGBiGsqM8QFNp+MnRkQwffusMdPKSsMsfAreTyonArF9swtJ+riGPcqc9f8uk=
X-Received: by 2002:ac2:465e:: with SMTP id s30mr4899362lfo.134.1579095818725;
 Wed, 15 Jan 2020 05:43:38 -0800 (PST)
MIME-Version: 1.0
References: <20200107130844.20763-1-srinivas.kandagatla@linaro.org> <20200107130844.20763-3-srinivas.kandagatla@linaro.org>
In-Reply-To: <20200107130844.20763-3-srinivas.kandagatla@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 15 Jan 2020 14:43:27 +0100
Message-ID: <CACRpkdaFfNDuUkChNeVcrL2TUJ3Qc62Fk7nfa0qnK5eh2YYPhA@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] gpio: wcd934x: Add support to wcd934x gpio controller
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Rob Herring <robh@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        spapothi@codeaurora.org, bgoswami@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 7, 2020 at 2:09 PM Srinivas Kandagatla
<srinivas.kandagatla@linaro.org> wrote:

> This patch adds support to wcd934x gpio block found in
> WCD9340/WC9341 Audio codecs.
>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

Patch applied. (I applied the bindings earlier.)

Yours,
Linus Walleij
