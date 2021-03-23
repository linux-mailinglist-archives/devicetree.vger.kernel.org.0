Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3F66346AA8
	for <lists+devicetree@lfdr.de>; Tue, 23 Mar 2021 22:02:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233527AbhCWVCA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Mar 2021 17:02:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233476AbhCWVBf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Mar 2021 17:01:35 -0400
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DD44C061764
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 14:01:35 -0700 (PDT)
Received: by mail-pg1-x536.google.com with SMTP id n11so12989195pgm.12
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 14:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=j+3BKrM5me7auELaARAPwAS0rivnyHdPonNpXLIjgro=;
        b=hcjviBgIQ6fe5fnQkbvXjT0gP4wOpIiSxoK0n/0cLGbkVhMOQH9HkpHhxhhQGQe6TL
         epk2vtpx/VDLXbDMJPsb9JxcJFztD4XrY2b5qFXD3zCD/yiVCAr9ApuCub6uoxGDmcKc
         XgjPlyZmWF7uYz+KaOC5eofj9eIzLIAkcsbBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=j+3BKrM5me7auELaARAPwAS0rivnyHdPonNpXLIjgro=;
        b=TZ1V9Q+f9ujevtVeyzYJ4WJxNa9eMZ9eGM2nv2bE+IIaln9PGEselNwAPIiXzLqxj+
         3CcYGNXIhDej+kt7Om+5ygcnn+LMMZcb96fJeofJTyEi+OjmGnwKFj9XOOKVP9N3p+VN
         w4MHc57PHtNA18q/hPIqGMFIZPZMjKi8wPZd02qFf64MJkbzQB08SSjYLV7pP6K8qIWK
         K0RZA+UiZ3UHgVkVV99djPsXRvDQvemecuejWRVZxHumxqIV0c393ZNkGyxIaICHT/2p
         wC2S5dBYu62tV2qYaEAVd9orwihkYBuKR+Z5A8S0Fhw9nBdnnOJX9jSVos88zcCovVyS
         xKwQ==
X-Gm-Message-State: AOAM532RMfS3d7l5qcqnQnyNlr1Zos9Db0zFJv3Hazg2I72sJlgBSCL/
        ZVVVsaTBKZRLZOF7HyHMZBKQ7A==
X-Google-Smtp-Source: ABdhPJy9VXxmhfEyOS8ICDrQ14e4OC/h87W74XrDtXDEVQUnVRUhGKTFvcqy27HUIUkaRwpqZ6HO9A==
X-Received: by 2002:a62:78d4:0:b029:1f1:595b:dfdf with SMTP id t203-20020a6278d40000b02901f1595bdfdfmr149205pfc.81.1616533294364;
        Tue, 23 Mar 2021 14:01:34 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:201:84ac:62f7:16a8:ccc7])
        by smtp.gmail.com with ESMTPSA id c24sm102212pfi.193.2021.03.23.14.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 14:01:33 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1615978901-4202-2-git-send-email-sanm@codeaurora.org>
References: <1615978901-4202-1-git-send-email-sanm@codeaurora.org> <1615978901-4202-2-git-send-email-sanm@codeaurora.org>
Subject: Re: [PATCH 1/3] dt-bindings: usb: qcom,dwc3: Add bindings for SC7280
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, Manu Gautam <mgautam@codeaurora.org>,
        Sandeep Maheswaram <sanm@codeaurora.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Doug Anderson <dianders@chromium.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sandeep Maheswaram <sanm@codeaurora.org>,
        Vinod Koul <vkoul@kernel.org>,
        Wesley Cheng <wcheng@codeaurora.org>
Date:   Tue, 23 Mar 2021 14:01:32 -0700
Message-ID: <161653329214.3012082.3763700105699946359@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sandeep Maheswaram (2021-03-17 04:01:39)
> Add the compatible string for sc7280 SoC from Qualcomm.
>=20
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
