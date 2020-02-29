Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C77EA174372
	for <lists+devicetree@lfdr.de>; Sat, 29 Feb 2020 00:42:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726359AbgB1Xm3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Feb 2020 18:42:29 -0500
Received: from mail-lf1-f68.google.com ([209.85.167.68]:37266 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726366AbgB1Xm2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Feb 2020 18:42:28 -0500
Received: by mail-lf1-f68.google.com with SMTP id b15so3366536lfc.4
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2020 15:42:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iId8/Patumvx4bfeqRK0XfOfMMBiyM4YKPgGmeoe3Ic=;
        b=jR9hz1HnsFYdmlGMnV8RJw+1wYnmwgmp5F4eYV/HQJq0IT8X9BmWqLirtywy1i2QP4
         PENcGt2urlSOb7+1q2awxksqIf8X5fPoDXtpW+LGhA4OHuAGV/S+OJrrdNiN25PDwSId
         oBmLzMgzt4wjcsLTuSyUutMgMmEgIhzVmQS2g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iId8/Patumvx4bfeqRK0XfOfMMBiyM4YKPgGmeoe3Ic=;
        b=BUDl1Fff4vRBYnUAXftaYj0m17cjDQqyf5jME6VtlgnsqB/X3KyGfJ1oQ8inGfmOmn
         kJnRAc05gFnNigmHxTv/P2OOjxQWhnG93OfSt0JkaD0NCRX56HHMN632DSHww8GQOCIg
         v/YDrwgIawVTFGa5HmS72/7MCZl7M0M5fQZf6k6Klbc/mU5dVltLNdEMB5RUSXUDOJll
         aqUhWjO1ahGLvQqZ9cR2+TbKHPoR2L9YAAL9PY1rYebqZlPeHsTiP/UU9+N3+m+9+clX
         YTgVOj35HP3wwdvhXb6n69sNuI9CEIKCj04GnwRPr2tKxgS5SPxPa1NjlyecyeliRP5w
         2j3A==
X-Gm-Message-State: ANhLgQ0EnAiQDV7/WiS/YT1wahdREjFXRLjJcy5Xjk1jbJwx9tuW0VAF
        s/Wf38SqkEViLcamzLE2R0pFmkxTh4k=
X-Google-Smtp-Source: ADFU+vtQ74uWt9zFE2uJJntCOSaLHtXMIyoywhnnfZyVP0S8+N6CHhEd1Be+6UsdZIpUFCCq+bRCEg==
X-Received: by 2002:ac2:4d16:: with SMTP id r22mr3656716lfi.74.1582933345809;
        Fri, 28 Feb 2020 15:42:25 -0800 (PST)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com. [209.85.167.48])
        by smtp.gmail.com with ESMTPSA id n21sm2779535ljc.103.2020.02.28.15.42.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2020 15:42:24 -0800 (PST)
Received: by mail-lf1-f48.google.com with SMTP id 83so3323241lfh.9
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2020 15:42:23 -0800 (PST)
X-Received: by 2002:ac2:5226:: with SMTP id i6mr3661642lfl.99.1582933343335;
 Fri, 28 Feb 2020 15:42:23 -0800 (PST)
MIME-Version: 1.0
References: <1581316605-29202-1-git-send-email-sanm@codeaurora.org>
 <1581316605-29202-2-git-send-email-sanm@codeaurora.org> <158137029351.121156.8319119424832255457@swboyd.mtv.corp.google.com>
In-Reply-To: <158137029351.121156.8319119424832255457@swboyd.mtv.corp.google.com>
From:   Evan Green <evgreen@chromium.org>
Date:   Fri, 28 Feb 2020 15:41:47 -0800
X-Gmail-Original-Message-ID: <CAE=gft47is6Td7dtM_FmP1g6TFv+yRYuz7yca015YXbRRDon5w@mail.gmail.com>
Message-ID: <CAE=gft47is6Td7dtM_FmP1g6TFv+yRYuz7yca015YXbRRDon5w@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: usb: qcom,dwc3: Convert USB DWC3 bindings
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Doug Anderson <dianders@chromium.org>,
        Felipe Balbi <balbi@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sandeep Maheswaram <sanm@codeaurora.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        linux-usb@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Manu Gautam <mgautam@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sandeep, are you going to spin this series?
-Evan
