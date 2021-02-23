Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D4BF32267C
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 08:40:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231815AbhBWHkO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 02:40:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231828AbhBWHjq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 02:39:46 -0500
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33C14C06178B
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 23:39:06 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id w18so8249064pfu.9
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 23:39:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=PqsWXWoBSx5Wi6Oyza26MFUWfhTlkhSscZXRXQSmuUg=;
        b=QH4OSIwgcJsrVdNFsRsrkN1wKjC13wDViH+Q0LrB80ka15RgbaLXPxo8B4NlCq38C1
         1cgVzX9h/aynUE6CEs/viXqfnqh85tEweNWEAoB02zi+xley8zjmDA4/h6QYbG/BXpgD
         ZYIugzzidDdhNhnqCM3fw+os7Ok9DSmYtoaEk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=PqsWXWoBSx5Wi6Oyza26MFUWfhTlkhSscZXRXQSmuUg=;
        b=uMAkrQ5HW6e0SaqvarCw0tEHmpoVtsGEilZ/eZNN+R4FOcmEHoDu482il0DxzDZjaj
         qZweWwO7vFuLY62YcwiiHSURcaZflMhrDKzbWiIYLb6w76n7DpIMJeexg7Q8bcUzrruM
         1dZ1Qc5h71iuFP0ZJUQ2/x1qQL+5c4VLrMHW6DNIeyoNx9wVdsqiHqNIUhQa6c/pFmRD
         R2+WfFMur03iEyXaGB7ZOlv1yEt67ET9BJrsib+Fpjt0dk924jj1noSAOKK6qHplpWJb
         W0BrdWR+GmETHdBsmAtgDnKgzEmCWl7QTBeD9iqKklXcJEKoIoXuhHavz8VqlKTYY5yG
         azQA==
X-Gm-Message-State: AOAM532yy4bnXEcGNdVQ/nz7ispEx3tKDboW/HnTeC9w0H663jR0iuCR
        Nam2r2P/98JeLI+4E3CqRyEFMQ==
X-Google-Smtp-Source: ABdhPJyNE6eAdyPqp64lYpybwvGjFFdWufkbD62VWrX15AJvYmrvCAwsL29lBr7kQRiYVybm5qIt9g==
X-Received: by 2002:a63:3602:: with SMTP id d2mr23296547pga.81.1614065945816;
        Mon, 22 Feb 2021 23:39:05 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:68e6:d68b:3887:f216])
        by smtp.gmail.com with ESMTPSA id f28sm23635100pfk.182.2021.02.22.23.39.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 23:39:05 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1613114930-1661-5-git-send-email-rnayak@codeaurora.org>
References: <1613114930-1661-1-git-send-email-rnayak@codeaurora.org> <1613114930-1661-5-git-send-email-rnayak@codeaurora.org>
Subject: Re: [PATCH 04/13] dt-bindings: qcom,pdc: Add compatible for sc7280
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Rajendra Nayak <rnayak@codeaurora.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org
Date:   Mon, 22 Feb 2021 23:39:04 -0800
Message-ID: <161406594410.1254594.17233726724785827971@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajendra Nayak (2021-02-11 23:28:41)
> Add the compatible string for sc7180 SoC from Qualcomm
>=20
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.txt | 1 +

Is this being YAML-ified at some point?
