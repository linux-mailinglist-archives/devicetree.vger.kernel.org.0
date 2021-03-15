Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51DF233C97F
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 23:46:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230301AbhCOWpy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 18:45:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229826AbhCOWpd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 18:45:33 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8A7EC061756
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 15:45:32 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id w8so9591962pjf.4
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 15:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Yf4vO2b+lTKzWfzfbp51qupLwQASo1gnl28vzzbgt9k=;
        b=S11dJ5n6BohDMT5neZVRzhpqx5VgRSeGWiVMwwVg+mhb8xwzirUc3zk19j3bD934J3
         ZW1eyzEZ8KHRyxOIXRSarJPwDQF9O/UEwCqZ3eCIhdgC+pEEKOe6lEqhWigTM0TsN/55
         yP9OrwC0wl3QYUgFxK3xS5JpD62fpfkh5gnW4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Yf4vO2b+lTKzWfzfbp51qupLwQASo1gnl28vzzbgt9k=;
        b=AeCc2H+aj+ak95MSxAOVA+TbIHkfdSMfOEgeWcKnufadbFnM9NzvkDV60CEPgvkCPU
         ew3QUnxuRF+q4maUO+x1ZNXPKpgf1RFLgOWmVyCJeJu5i+ZJEvvoFe8MwQw4yOd2mAjy
         BEiJRBitP+1O9wNhzfGLbnhTLtpQ+99UTTHWYqf0jTCD5FqXd+SPeFgx0fM9VsSLLEHJ
         lwzR4JytKtS8jnfb837IKzooetP2vKbWG07s+llvrgrg9+mO4eVyXAsACsUDQTH/uTph
         kefvIQT65dDCBFXvYavZh3EGh1/fVpc3W1nvfNPs75kGYgxZ+4AF65CZUoE5MxgFAFfv
         6Y4w==
X-Gm-Message-State: AOAM531NEGlqJ0PlRAzwnRCjjfbLav2yB9Ak6I/Qc6tHrvX/O9KKa8i5
        6hlnNgEEFo12+dhiAlVUi1FPmTBzxtGcPA==
X-Google-Smtp-Source: ABdhPJweQ8WTz2oc0TexZGPKvx/4ySquJAeSp1iPIu+k4Gq6dXx+xr/0gIFUwHXoCjcqQRKqLdLDhA==
X-Received: by 2002:a17:90b:108f:: with SMTP id gj15mr1406327pjb.177.1615848332229;
        Mon, 15 Mar 2021 15:45:32 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:9867:b969:5d4f:e017])
        by smtp.gmail.com with UTF8SMTPSA id d8sm15598951pfq.27.2021.03.15.15.45.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Mar 2021 15:45:31 -0700 (PDT)
Date:   Mon, 15 Mar 2021 15:45:30 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Doug Anderson <dianders@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sc7180: Add pompom rev3
Message-ID: <YE/jihnCSbMJ9qO3@google.com>
References: <20210312183228.550779-1-mka@chromium.org>
 <20210312103211.v2.2.I4138c3edee23d1efa637eef51e841d9d2e266659@changeid>
 <CAD=FV=U6xNaTLaP5Hz4EVTd3EY-ptTCaLJ84X6=C_6E9Gdq03w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAD=FV=U6xNaTLaP5Hz4EVTd3EY-ptTCaLJ84X6=C_6E9Gdq03w@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 15, 2021 at 02:48:55PM -0700, Doug Anderson wrote:
> Hi,
> 
> On Fri, Mar 12, 2021 at 10:32 AM Matthias Kaehlcke <mka@chromium.org> wrote:
> >
> > +       linux,keymap = <
> > +               MATRIX_KEY(0x00, 0x02, KEY_BACK)
> > +               MATRIX_KEY(0x03, 0x02, KEY_REFRESH)
> > +               MATRIX_KEY(0x02, 0x02, KEY_ZOOM)
> > +               MATRIX_KEY(0x01, 0x02, KEY_SCALE)
> > +               MATRIX_KEY(0x03, 0x04, KEY_SYSRQ)
> > +               MATRIX_KEY(0x02, 0x04, KEY_BRIGHTNESSDOWN)
> > +               MATRIX_KEY(0x01, 0x04, KEY_BRIGHTNESSUP)
> > +               MATRIX_KEY(0x02, 0x09, KEY_MUTE)
> > +               MATRIX_KEY(0x01, 0x09, KEY_VOLUMEDOWN)
> > +               MATRIX_KEY(0x00, 0x04, KEY_VOLUMEUP)
> > +
> > +               MATRIX_KEY(0x03, 0x09, KEY_SLEEP)       /* LOCK key */
> 
> I don't think you want the LOCK key. See <https://crrev.com/c/2719075>

ack, thanks!
