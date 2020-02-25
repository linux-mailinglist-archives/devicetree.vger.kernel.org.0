Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3ED3B16EDDF
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2020 19:21:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731518AbgBYSVN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Feb 2020 13:21:13 -0500
Received: from mail-pf1-f196.google.com ([209.85.210.196]:37413 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727983AbgBYSVN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Feb 2020 13:21:13 -0500
Received: by mail-pf1-f196.google.com with SMTP id p14so7621592pfn.4
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2020 10:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=iC5nzqy2saMeKutgvDrEBEpuv4q4qMVR1i8BRvTShFQ=;
        b=MVwL4tMZMEEl2E6apD+vt9gHqTB4aVqv4Q/HjRlSH7fMKmhannrm5E9vIkZWY2DoaP
         8syBXB8r64JQsGc1kp+v2kTU+8tHIDDpkRr9Le1VGRdqO2al35oYvUIZKsxK5jtZrfNQ
         Kogo6PvroMVJQlEheMKrYR5XgJERai0cYo4QE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=iC5nzqy2saMeKutgvDrEBEpuv4q4qMVR1i8BRvTShFQ=;
        b=rR3/PQDk90Z9YrT3+kX3hR5qxKmZyBNDS7y3gE1SCCOySZ3VHyYqJr5dMhduQ4sR+t
         w84UDCVEgBmeHk5I5Oup47yjtKG3au/DoigFa8MH8IHznfOSUiWftGgChGq8SZBKh+uI
         Z+9uzJJB9DqvPZUQFdIJ6p1Zd9zM1niJXduVBT74/+vs/mpSlZgo0NoSORdJST3TTLpK
         tFcrnrN2hD731LS32VXZFNAMoQt431wUR2ex/fWy9nVFTRBkc302OIXypuU4tjCDK69B
         ySk6nhuliJyEqFm2/vSnqA/SU061T4dzl2KhBYu6mgl8epJnZnhGMMrW/eJQezoniUhf
         Kokg==
X-Gm-Message-State: APjAAAUn2RXQAQ4MywBRQe51pocgczec58lxP16hzO/PZr4ZGNuXVWCh
        ONx05S19SWKFho49Io2Xybbihw==
X-Google-Smtp-Source: APXvYqxRFmacFI+CAN2B515JEZN59wcYjLYX/Z/txp5nfpEfz9dqhyREK3lF14hQ/tQEQsNO5Vg7Bw==
X-Received: by 2002:a63:5124:: with SMTP id f36mr20811504pgb.288.1582654872451;
        Tue, 25 Feb 2020 10:21:12 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id fz21sm4057444pjb.15.2020.02.25.10.21.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2020 10:21:12 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1581932212-19469-3-git-send-email-akashast@codeaurora.org>
References: <1581932212-19469-1-git-send-email-akashast@codeaurora.org> <1581932212-19469-3-git-send-email-akashast@codeaurora.org>
Subject: Re: [PATCH V4 2/3] dt-bindings: geni-se: Add interconnect binding for GENI QUP
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mgautam@codeaurora.org,
        rojay@codeaurora.org, skakit@codeaurora.org,
        Akash Asthana <akashast@codeaurora.org>
To:     Akash Asthana <akashast@codeaurora.org>, agross@kernel.org,
        mark.rutland@arm.com, robh+dt@kernel.org
Date:   Tue, 25 Feb 2020 10:21:11 -0800
Message-ID: <158265487123.177367.16475123402427047498@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Akash Asthana (2020-02-17 01:36:51)
> Add documentation for the interconnect and interconnect-names properties
> for the GENI QUP.
>=20
> Signed-off-by: Akash Asthana <akashast@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
