Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE7972F0406
	for <lists+devicetree@lfdr.de>; Sat,  9 Jan 2021 23:13:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726346AbhAIWNW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Jan 2021 17:13:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726245AbhAIWNV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Jan 2021 17:13:21 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78E96C061786
        for <devicetree@vger.kernel.org>; Sat,  9 Jan 2021 14:12:41 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id v67so3539025lfa.0
        for <devicetree@vger.kernel.org>; Sat, 09 Jan 2021 14:12:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pWNdgAB7F54905PSxndcuizQFvWz899oT1UF8mQCigE=;
        b=VoWkuuaRzIcof6rg6fCj8gUuVQmk4mX+M7w5MsOegPHy0wlbZN0g5y31EVEOCG+JFc
         nZe3HayAOiuIRSWyGrg3Kw+lXX5mzU42uxaKbudkmwFyjtUHFjFsAk3586c4vTmyCImp
         AArWIZlmcpjQVnfPPRFpfGGDDoh5ITf8qYBeLNtsIamK0ewbrxav5lk/vDozVEbyrT2q
         iQ3QcUfMyEmh5m4HCZzaEhesRxcdlPDbuHZlNQwNxNIJ2dQmaPdt4YzwwF/YqMC9vP7+
         vXN8AE3jK+j2PoFDezpL6samXXmDbIJLhf4vK2s/Z3jvdmUoiZPiZEhpnxMqDUvtpBO3
         YpQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pWNdgAB7F54905PSxndcuizQFvWz899oT1UF8mQCigE=;
        b=V93XO909+IfHbgZ4SA6lxhkckCQjVfxEjeg2e8LhT4+JZ9JSI5SYZZKYv9jihKVJ5g
         2XqVVyuEcCB4CXkvdWfM2TseTJQeha7BzlWa7+WymcSYtkATqTt52VrXnykigEhUcfn0
         qn8apgg/GvqoBZTT9pb2ucYof69iKj0vYCZXstj4CkQnh1XSLxa+wy+FYynmj8IRZVbx
         9gYk9wNHY3JhHW2vZGaDhZwskoMpmDbpSJV8jjlmvYyJU0j2+hqN3Jvj51+I13v5csX8
         MOVbYNIH7UY3/xTE3bnFByuPr/H7IDM2sTvpfxthvvv/sMLE5opIbQGCKjzairzWLmge
         E1bw==
X-Gm-Message-State: AOAM532+uaLdUaKBukBN811IYEyVAYLb0BC8+G1H0fhfiW50SL8uZB1K
        3fKuzDQN5LDFofdvJfwJN6tUpIN/f+D5xN8C8L551w==
X-Google-Smtp-Source: ABdhPJxACc9VPGH/iTwCxT+Lt9jPUgWD6ypR+Dmax5NfonZfuWTmjtMwb90HF88pUYCiu4Mx2CiDj4k+fDhIva0v5qw=
X-Received: by 2002:a2e:85d1:: with SMTP id h17mr4095505ljj.438.1610230360062;
 Sat, 09 Jan 2021 14:12:40 -0800 (PST)
MIME-Version: 1.0
References: <20210109140204.151340-2-angelogioacchino.delregno@somainline.org> <202101100151.3ojnIrPg-lkp@intel.com>
In-Reply-To: <202101100151.3ojnIrPg-lkp@intel.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 9 Jan 2021 23:12:29 +0100
Message-ID: <CACRpkdbT6tv5ArKRLPh3hE-3fuYHotqG5tNwkF4vftSQ1T=wNA@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: Add driver for Awinic AW9523/B I2C GPIO Expander
To:     kernel test robot <lkp@intel.com>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        kbuild-all@lists.01.org, konrad.dybcio@somainline.org,
        marijn.suijten@somainline.org, martin.botka@somainline.org,
        phone-devel@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 9, 2021 at 6:24 PM kernel test robot <lkp@intel.com> wrote:

>  > 880          gpioirq->parent_domain = NULL;

The autobuilder is complaining because your irq chip is not
hierarchical and this is only used for hierarchical irqchips.
I think you can just delete this line.

Yours,
Linus Walleij
