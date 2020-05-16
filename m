Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3284D1D6389
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2020 20:21:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726397AbgEPSVs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 May 2020 14:21:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726298AbgEPSVr (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 16 May 2020 14:21:47 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8542DC061A0C
        for <devicetree@vger.kernel.org>; Sat, 16 May 2020 11:21:47 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id z5so5201057ejb.3
        for <devicetree@vger.kernel.org>; Sat, 16 May 2020 11:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nKCvzFzDJwI3HXouOp6WcYD5dHNC76jOugYKhj+rIOA=;
        b=XhASPMCvWya6WvtqiOlGXjfqrsEq+MQsJK1DiAbIl3GxFcq9r0C9d2SKwgtTJSYzFA
         FiPTIFzV34bZYJn7Gjagexd61oga87+3ugTwzeG4cF2zUzaWdH8tCmn1zlcO/TjYz8bC
         eTYRwz9gPlCmiWdkF2QBEFLlefHXAvxHpgUIoFEKcoEqEB1PJOVGnMHu/ZNXc9lZXjiY
         EV0kVtPCHKbXNLQffk/sDim/HX7ycpIC/BhsK0EMKaMCmUDmEma30h4RiSA73VvyMUep
         3TzXhXnjJGEJ9tnFHdRAOKL9ZodTk7j9lpbZ3ZUNAFgyqTsmheN3FFKQmmeHhPY51pg3
         B5NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nKCvzFzDJwI3HXouOp6WcYD5dHNC76jOugYKhj+rIOA=;
        b=RVYhpwfhSAl0LuiyxXKgrCSSl0XLOhFcoVl6sw8j5o5FnCGO3g9dHm876sBUiOAC1x
         IQ6QSczT4l77NanCnw1jSOFA4L7EV2ArcuxHoVoxnd5XHwpyxq5HX7ndtagNPp+4RaJY
         GLUlaexT+kHuvDpWqaKT2jQwy1rbL+vRGe7YVhTrATLRbmt+DCENWZSCam/FFy1DJyhx
         4GtY8arn+P8AiWJDHo+jqTnRZUkiLrdis1qno0/lOrTZSmwasV0DPDv/HDrFizxa4RZC
         rEF1kA4j7fwoxDuin1moQAyYA9ZZtBkhLZ8tkKMM2K+Zsfz30TYcolTlqvJSDeqkCk+i
         Reow==
X-Gm-Message-State: AOAM533BgtApdSgmSOyP2TVfmxLehJ4iC0pjBt90o4l3hlUmAtiYqnHI
        pwAg5QWFCBmgn5tfSqBcPbSAuu/ev/ubFA7mL94=
X-Google-Smtp-Source: ABdhPJx3ndsBB4Ig3ZS+qr3seZa4yyF/PHyxqN7ExN85//EBl1IHZROst3IN3b1DXe709rVv1gEC5YWmBAQa15jLM4M=
X-Received: by 2002:a17:906:7e15:: with SMTP id e21mr8591973ejr.106.1589653306123;
 Sat, 16 May 2020 11:21:46 -0700 (PDT)
MIME-Version: 1.0
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-6-git-send-email-amittomer25@gmail.com> <afc0d7f3-d763-b936-988c-d802b86836bc@arm.com>
In-Reply-To: <afc0d7f3-d763-b936-988c-d802b86836bc@arm.com>
From:   Amit Tomer <amittomer25@gmail.com>
Date:   Sat, 16 May 2020 23:51:09 +0530
Message-ID: <CABHD4K9aS+_xscVSgH6RiRGBBF59sNregwvsH=oKXujAHe-ing@mail.gmail.com>
Subject: Re: [PATCH v1 5/9] dt-bindings: dmaengine: convert Actions Semi Owl
 SoCs bindings to yaml
To:     =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
Cc:     =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, cristian.ciocaltea@gmail.com,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-actions@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

> (The kernel chose to use only one, but that's nothing the binding is
> concerned about).
But there are four different interrupt events corresponds to these four
interrupts.
So, if Kernel chooses to have only one interrupt , how other events
would be notified ?

Thanks
-Amit
